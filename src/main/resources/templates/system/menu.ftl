<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/static/layui/css/layui.css" media="all">
    <title>Title</title>
    <script src="/static/layui/layui.js"></script>
</head>
<body>
<div class="pzright" style="width:101%;display: flex;justify-content: flex-start;float:right;">
    <p class="xm-d1-p2">
        <button id="addMenu" class="layui-btn layui-btn-radius btnys"><i class="layui-icon">&#xe608;</i>添加</button>
        <button class="layui-btn" id="btn-expand">全部展开</button>
        <button class="layui-btn" id="btn-fold">全部折叠</button>
        <button class="layui-btn" id="btn-refresh">刷新表格</button>
    </p>
</div>

    <div>
        <table class="layui-table" id="menu_id" lay-filter="menuTable"></table>
    </div>
    <div id="menuForm" style="display: none;">
        <form class="layui-form" action="" id="formId">
            <input type="hidden" name="id"  class="layui-input edit-id">
            <div class="layui-form-item">
                <label class="layui-form-label">菜单名称</label>
                <div class="layui-input-block">
                    <input type="text" name="name" required  lay-verify="required" placeholder="请输入菜单名字" autocomplete="off" class="layui-input edit-name" style="width: 40%;">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">菜单路径</label>
                <div class="layui-input-block">
                    <input type="text" name="url"    placeholder="请输入菜单路径" autocomplete="off" class="layui-input edit-url" style="width: 40%;">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">父级菜单</label>
                <div class="layui-input-inline">
                    <select name="Menu_id" lay-filter="pMenu"  id="Menu_id" class="edit-pid">
                        <option value=""></option>
                        <#list allParentMenu as r>
                            <option value="${r.id}">${r.name}</option>
                        </#list>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formMenu">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</body>
    <script>
        layui.config({
            base: '/static/'
        }).extend({
            treetable: 'treetable-lay/treetable'
        }).use(['treetable','table','layer','form'], function () {
            var treetable = layui.treetable;
            var table = layui.table;
            var layer = layui.layer;
            var $ = layui.jquery;
            var form = layui.form;
            // 渲染表格
            var renderTable = function () {
                treetable.render({
                    treeColIndex: 2,          // treetable新增参数
                    treeSpid: 0,             // treetable新增参数
                    treeIdName: 'id',       // treetable新增参数
                    treePidName: 'menuid',     // treetable新增参数
                    treeDefaultClose: true,   // treetable新增参数
                    treeLinkage: true,        // treetable新增参数
                    elem: '#menu_id',
                    url: '/menu/getMenuAll',
                    page: true,
                    cols: [[
                        {type: 'numbers'},
                        {field: 'id', title: 'id'},
                        {field: 'name', title: '菜单'},
                        {field: 'url', title: '路径'},
                        {field: 'menuid', title: 'menuId'},
                        {templet: complain, title: '操作'},
                    ]]
                });
            };
            renderTable();

            //触发四个button按钮
            $('#btn-expand').click(function () {
                treetable.expandAll('#menu_id');
            });
            $('#btn-fold').click(function () {
                treetable.foldAll('#menu_id');
            });
            $('#btn-refresh').click(function () {
                renderTable();
            });
            var indexPage;
            $('#addMenu').click(function () {
                layer.msg('添加');
                indexPage= layer.open({
                    type:1,
                    area:['45%','40%'],
                    content:$("#menuForm"),
                });
                //清空表单数据
                $(".edit-id").val("");
                $("#formId")[0].reset();
                form.render();
            });
            function complain(d){
                //操作中显示的内容
                if(d.url!=null){
                    return [
                        '<a class="operation" lay-event="edit" href="javascript:void(0)"  title="编辑">',
                        '<i class="layui-icon layui-icon-edit"></i></a>',
                        '<a class="operation" lay-event="del" href="javascript:void(0)"  title="删除">',
                        '<i class="layui-icon layui-icon-delete" ></i></a>',
                    ].join('');
                }else{
                    return '';
                }
            }
            //监听表单数据提交
            form.on('submit(formMenu)', function(data){
                layer.msg(JSON.stringify(data.field));

                var rows=data.field;
                console.debug(rows);
                var url;
                if(rows.id){
                    url="/menu/edit";
                }else{
                    url="/menu/add";
                }
                $.ajax({
                    type: "get",
                    url: url,
                    data:{
                        id:rows.id,
                        name:rows.name,
                        url:rows.url,
                        menuid:rows.Menu_id
                    },
                    success:function (res) {
                        if(res.success){
                            layer.msg('操作成功');
                            layer.close(indexPage);
                            renderTable();
                        }else {
                            layer.msg('操作失败');
                        }
                    }
                });
                return false;
            });
            //onclick="editDepartment(\''+ d.id + '\')"
            //监听工具条
            table.on('tool(menuTable)', function (obj) {
                var data = obj.data;
                console.debug(data);
                var layEvent = obj.event;
                if(data.name!=null){
                    if (layEvent === 'del') {
                        layer.confirm('确定要删除菜单么？', {
                            btn: ['确定','取消'] //按钮
                        }, function(){
                            $.ajax({
                                type: "get",
                                url: "/menu/del",
                                data:{id:data.id},
                                success:function (res) {
                                    console.debug(data);
                                    if(res.success){
                                        layer.msg('删除成功');
                                        renderTable();
                                    }else {
                                        layer.msg('删除失败');
                                    }
                                }
                            });
                        });
                    } else if (layEvent === 'edit') {
                        //layer.msg('修改' + data.id);
                        indexPage= layer.open({
                            type:1,
                            area:['45%','40%'],
                            content:$("#menuForm"),

                        });
                        //回显数据
                        $(".edit-id").val(data.id);
                        $(".edit-name").val(data.name);
                        $(".edit-url").val(data.url);
                        $(".edit-pid").val(data.menuid);
                        form.render();

                    }
                }
            });



        });

    </script>
</html>