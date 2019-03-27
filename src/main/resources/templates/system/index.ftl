<#--<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>后台</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" href="/static/favicon.ico">
    <link rel="stylesheet" href="/static/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="/static/css/index.css" media="all" />
</head>
<body class="main_body">
<div class="layui-layout layui-layout-admin">
    <!-- 顶部 &ndash;&gt;
    <div class="layui-header header">
        <div class="layui-main mag0">
            <a href="#" class="logo">layuiCMS 2.0</a>
            <!-- 显示/隐藏菜单 &ndash;&gt;
            <a href="javascript:;" class="seraph hideMenu icon-caidan"></a>
            <!-- 顶级菜单 &ndash;&gt;
            <ul class="layui-nav mobileTopLevelMenus" mobile>
                <li class="layui-nav-item" data-menu="contentManagement">
                    <a href="javascript:;"><i class="seraph icon-caidan"></i><cite>layuiCMS</cite></a>
                    <dl class="layui-nav-child">
                        <dd class="layui-this" data-menu="contentManagement"><a href="javascript:;"><i class="layui-icon" data-icon="&#xe63c;">&#xe63c;</i><cite>内容管理</cite></a></dd>
                        <dd data-menu="memberCenter"><a href="javascript:;"><i class="seraph icon-icon10" data-icon="icon-icon10"></i><cite>用户中心</cite></a></dd>
                        <dd data-menu="systemeSttings"><a href="javascript:;"><i class="layui-icon" data-icon="&#xe620;">&#xe620;</i><cite>系统设置</cite></a></dd>
                        <dd data-menu="seraphApi"><a href="javascript:;"><i class="layui-icon" data-icon="&#xe705;">&#xe705;</i><cite>使用文档</cite></a></dd>
                    </dl>
                </li>
            </ul>
            <ul class="layui-nav topLevelMenus" pc>
                <li class="layui-nav-item layui-this" data-menu="contentManagement">
                    <a href="javascript:;"><i class="layui-icon" data-icon="&#xe63c;">&#xe63c;</i><cite>内容管理</cite></a>
                </li>
                <li class="layui-nav-item" data-menu="memberCenter" pc>
                    <a href="javascript:;"><i class="seraph icon-icon10" data-icon="icon-icon10"></i><cite>用户中心</cite></a>
                </li>
                <li class="layui-nav-item" data-menu="systemeSttings" pc>
                    <a href="javascript:;"><i class="layui-icon" data-icon="&#xe620;">&#xe620;</i><cite>系统设置</cite></a>
                </li>
                <li class="layui-nav-item" data-menu="seraphApi" pc>
                    <a href="javascript:;"><i class="layui-icon" data-icon="&#xe705;">&#xe705;</i><cite>使用文档</cite></a>
                </li>
            </ul>
            <!-- 顶部右侧菜单 &ndash;&gt;
            <ul class="layui-nav top_menu">
                <li class="layui-nav-item" pc>
                    <a href="javascript:;" class="clearCache"><i class="layui-icon" data-icon="&#xe640;">&#xe640;</i><cite>清除缓存</cite><span class="layui-badge-dot"></span></a>
                </li>
                <li class="layui-nav-item lockcms" pc>
                    <a href="javascript:;"><i class="seraph icon-lock"></i><cite>锁屏</cite></a>
                </li>
                <li class="layui-nav-item" id="userInfo">
                    <a href="javascript:;"><img src="/static/images/face.jpg" class="layui-nav-img userAvatar" width="35" height="35"><cite class="adminName">驊驊龔頾</cite></a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="page/user/userInfo.html"><i class="seraph icon-ziliao" data-icon="icon-ziliao"></i><cite>个人资料</cite></a></dd>
                        <dd><a href="javascript:;" data-url="page/user/changePwd.html"><i class="seraph icon-xiugai" data-icon="icon-xiugai"></i><cite>修改密码</cite></a></dd>
                        <dd><a href="javascript:;" class="showNotice"><i class="layui-icon">&#xe645;</i><cite>系统公告</cite><span class="layui-badge-dot"></span></a></dd>
                        <dd pc><a href="javascript:;" class="functionSetting"><i class="layui-icon">&#xe620;</i><cite>功能设定</cite><span class="layui-badge-dot"></span></a></dd>
                        <dd pc><a href="javascript:;" class="changeSkin"><i class="layui-icon">&#xe61b;</i><cite>更换皮肤</cite></a></dd>
                        <dd><a href="page/login/login.html" class="signOut"><i class="seraph icon-tuichu"></i><cite>退出</cite></a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
    <!-- 左侧导航 &ndash;&gt;
    <div class="layui-side layui-bg-black">
        <div class="user-photo">
            <a class="img" title="我的头像" ><img src="/static/images/face.jpg" class="userAvatar"></a>
            <p>你好！<span class="userName">admin</span>, 欢迎登录</p>
        </div>
        <!-- 搜索 &ndash;&gt;
        <div class="layui-form component">
            <select name="search" id="search" lay-search lay-filter="searchPage">
                <option value="">搜索页面或功能</option>
                <option value="1">layer</option>
                <option value="2">form</option>
            </select>
            <i class="layui-icon">&#xe615;</i>
        </div>
        <div class="navBar layui-side-scroll" id="navBar">
            <ul class="layui-nav layui-nav-tree">
                <li class="layui-nav-item layui-this">
                    <a href="javascript:;" data-url="/main"><i class="layui-icon" data-icon=""></i><cite>后台首页</cite></a>
                </li>

            </ul>
            <ul class="layui-nav layui-nav-tree">
                <li class="layui-nav-item ">
                    <a href="javascript:;">解决方案</a>
                    &lt;#&ndash;<a href="javascript:;" data-url="/page1"><i class="layui-icon" data-icon=""></i><cite>后台首页</cite></a>&ndash;&gt;
                        <dl class="layui-nav-child">
                            <dd>
                                <a href="javascript:;">列表一</a>
                            </dd>
                            <dd>
                                <a href="javascript:;">列表二</a>
                            </dd>
                            <dd>
                                <a href="javascript:;">列表三</a>
                            </dd>
                            <dd>
                                <a href="http://www.baidu.com">超链接</a>
                            </dd>
                        </dl>

                </li>

            </ul>
        </div>
    </div>
    <!-- 右侧内容  &ndash;&gt;
    <div class="layui-body layui-form">
        <div class="layui-tab mag0" lay-filter="bodyTab" id="top_tabs_box">
            <ul class="layui-tab-title top_tab" id="top_tabs">
                <li class="layui-this" lay-id=""><i class="layui-icon">&#xe68e;</i> <cite>后台首页</cite></li>
            </ul>

            <div class="layui-tab-content clildFrame">
                <div class="layui-tab-item layui-show">
                    <iframe src="/main" style="margin-top: 20px;"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- 底部 &ndash;&gt;
    <div class="layui-footer footer">
        <p><span>copyright @2018 驊驊龔頾</span>　<a onclick="donation()" class="layui-btn layui-btn-danger layui-btn-sm">捐赠作者</a></p>
    </div>
    
</div>

<!-- 移动导航 &ndash;&gt;
<div class="site-tree-mobile"><i class="layui-icon">&#xe602;</i></div>
<div class="site-mobile-shade"></div>

<script type="text/javascript" src="/static/layui/layui.js"></script>
<script type="text/javascript" src="/static/js/index.js"></script>
<script type="text/javascript" src="/static/js/cache.js"></script>
</body>
</html>-->
<!doctype html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>管理后台</title>
    <link rel="stylesheet" href="/static/layui/css/layui.css">
    <script src="/static/layui/layui.js"></script>
</head>
<body>
<div class="layui-layout-admin">
    <!--头部-->
    <div class="layui-header">
        <div class="layui-logo"><a class="img" title="logo" href="/index"><img src="/static/images/logo.png" style="width: 95%;height: 95%;"></a></div>
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="javascript:void(0)">控制台</a></li>
            <li class="layui-nav-item"><a href="javascript:;">商品管理</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其他系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">邮件管理</a></dd>
                    <dd><a href="javascript:;">消息管理</a></dd>
                    <dd><a href="javascript:;">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href=""><img src="http://m.zhengjinfan.cn/images/0.jpg" class="layui-nav-img">Wang Cong</a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
        </ul>
    </div>

    <!--左侧-->
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree" lay-filter="hbkNavbar">
                <#list allRecursion as rn>
                <li class="layui-nav-item">
                    <input type="hidden" name="id" value="${rn.id}" id="ssid"/>
                    <a href="javascript:;" >${rn.name}</a>
                    <dl class="layui-nav-child" id="menu_z_id">
                        <#list rn.children as rc>
                        <dd>
                            <a data-url="${rc.url}" data-id="${rc.id}" data-title="${rc.name}" href="javascript:;" class="site-demo-active" data-type="tabAdd">${rc.name}</a>
                        </dd>
                        </#list>
                    </dl>
                </li>
                </#list>
            </ul>
        </div>
    </div>

    <!--中间主体-->
    <div class="layui-body" id="container">
        <div class="layui-tab" lay-filter="tabs" lay-allowClose="true">
            <ul class="layui-tab-title top_tab">
                <li class="layui-this">首页</li>
            </ul>
            <ul class="rightmenu" style="display: none; background-color: #1E9FFF;position: absolute; ">
                <li data-type="closethis">关闭当前</li>
                <li data-type="closeall">关闭所有</li>
            </ul>

            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <#list kinList as k>
                        <span>${k.id}</span><br/>
                        <span>${k.name?substring(0,4)}</span><br/>
                        <span>${k.sex?string("男","女")}</span><br/>
                        <span>${k.time?string("yyyy-MM-dd HH:mm:ss")}</span><br/>
                        <hr/>
                    </#list>
                    <#list allRecursion as r>
                        <span>${r.id}</span><br/>
                        <span>${r.name}</span><br/>
                        <span>---</span><br/>
                    </#list>
                    <form class="layui-form" action="">
                        <div class="layui-form-item">
                            <label class="layui-form-label">地址</label>
                            <div class="layui-input-inline">
                                <select name="quiz1" lay-filter="quiz1"  id="quiz1">
                                    <option value="0">请选择省</option>
                                    <#list allRecursion as r>
                                        <option value="${r.id}">${r.name}</option>
                                    </#list>
                                </select>
                            </div>
                            <div class="layui-input-inline">
                                <select name="quiz2" id="quiz2">
                                    <option value="0">请选择市</option>
                                </select>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>


    <!--底部-->
    <div class="layui-footer">
        <center>版权所有 © 我的管理系统 </center>
    </div>
</div>
<script >
    layui.use(['element','form'], function() {
        var $ = layui.jquery;
        var form = layui.form;
        var element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

        form.on("select(quiz1)",function () {
            var sid = $("#quiz1").val();
            $.ajax({
                type: "get",
                url: "/findMenuByParentId",
                data:{id:sid},
                success:function (data) {
                    console.debug(data);
                    var quiz2 = $("#quiz2");
                    var op="";
                    for(var i=0;i<data.length;i++){
                        var id=data[i].id;
                        var name=data[i].name;
                        op+='<option value="'+id+'">'+name+'</option>';
                    }
                    console.debug(op)
                    quiz2.html('<option value="0">请选择市</option>'+op);
                    console.debug(quiz2.html());
                    //document.getElementById("quiz2").innerHTML = t;
                    //console.debug($("#quiz2").html())
                    form.render('select');
                }
            });
            //return false;
        });
        //触发事件
        var active = {
            //在这里给active绑定几项事件，后面可通过active调用这些事件
            tabAdd: function(url,id,name) {
                //新增一个Tab项 传入三个参数，分别对应其标题，tab页面的地址，还有一个规定的id，是标签中data-id的属性值
                //关于tabAdd的方法所传入的参数可看layui的开发文档中基础方法部分
                element.tabAdd('tabs', {
                    title: name,
                    content: '<iframe data-frameid="'+id+'" scrolling="auto" frameborder="0" src="'+url+'" style="width:100%;height:99%;"></iframe>',
                    id: id //规定好的id
                })
                CustomRightClick(id); //给tab绑定右击事件
                FrameWH();  //计算ifram层的大小
            },
            tabChange: function(id) {
                //切换到指定Tab项
                element.tabChange('tabs', id); //根据传入的id传入到指定的tab项
            },
            tabDelete: function (id) {
                element.tabDelete("tabs", id);//删除
            }
            , tabDeleteAll: function (ids) {//删除所有
                $.each(ids, function (i,item) {
                    element.tabDelete("tabs", item); //ids是一个数组，里面存放了多个id，调用tabDelete方法分别删除
                })
            }
        };
        //当点击有site-demo-active属性的标签时，即左侧菜单栏中内容 ，触发点击事件
        $('.site-demo-active').on('click', function() {
            var dataid = $(this);
            //这时会判断右侧.layui-tab-title属性下的有lay-id属性的li的数目，即已经打开的tab项数目
            if ($(".layui-tab-title li[lay-id]").length <= 0) {
                //如果比零小，则直接打开新的tab项
                active.tabAdd(dataid.attr("data-url"), dataid.attr("data-id"),dataid.attr("data-title"));
            } else {
                //否则判断该tab项是否以及存在
                var isData = false; //初始化一个标志，为false说明未打开该tab项 为true则说明已有
                $.each($(".layui-tab-title li[lay-id]"), function () {
                    //如果点击左侧菜单栏所传入的id 在右侧tab项中的lay-id属性可以找到，则说明该tab项已经打开
                    if ($(this).attr("lay-id") == dataid.attr("data-id")) {
                        isData = true;
                    }
                })
                if (isData == false) {
                    //标志为false 新增一个tab项
                    active.tabAdd(dataid.attr("data-url"), dataid.attr("data-id"),dataid.attr("data-title"));
                }
            }
            //最后不管是否新增tab，最后都转到要打开的选项页面上
            active.tabChange(dataid.attr("data-id"));
        });

        function CustomRightClick(id) {
            //取消右键  rightmenu属性开始是隐藏的 ，当右击的时候显示，左击的时候隐藏
            $('.layui-tab-title li').on('contextmenu', function () { return false; })
            $('.layui-tab-title,.layui-tab-title li').click(function () {
                $('.rightmenu').hide();
            });
            //桌面点击右击
            $('.layui-tab-title li').on('contextmenu', function (e) {
                var popupmenu = $(".rightmenu");
                popupmenu.find("li").attr("data-id",id); //在右键菜单中的标签绑定id属性

                //判断右侧菜单的位置
                l = ($(document).width() - e.clientX) < popupmenu.width() ? (e.clientX - popupmenu.width()) : e.clientX;
                t = ($(document).height() - e.clientY) < popupmenu.height() ? (e.clientY - popupmenu.height()) : e.clientY;
                console.debug(e.clientX);
                console.debug($(document).width());
                console.debug( popupmenu.width());
                popupmenu.css({ left: l, top: t }).show(); //进行绝对定位
                //alert("右键菜单")
                return false;
            });
        }

        $(".rightmenu li").click(function () {
            //右键菜单中的选项被点击之后，判断type的类型，决定关闭所有还是关闭当前。
            if ($(this).attr("data-type") == "closethis") {
                //如果关闭当前，即根据显示右键菜单时所绑定的id，执行tabDelete
                active.tabDelete($(this).attr("data-id"))
            } else if ($(this).attr("data-type") == "closeall") {
                var tabtitle = $(".layui-tab-title li");
                var ids = new Array();
                $.each(tabtitle, function (i) {
                    ids[i] = $(this).attr("lay-id");
                })
                //如果关闭所有 ，即将所有的lay-id放进数组，执行tabDeleteAll
                active.tabDeleteAll(ids);
            }
            $('.rightmenu').hide(); //最后再隐藏右键菜单
        })
        function FrameWH() {
            var h = $(window).height() -41- 10 - 60 -10-44 -10;
            $("iframe").css("height",h+"px");
        }

        $(window).resize(function () {
            FrameWH();
        });

    });

</script>
</body>
</html>

