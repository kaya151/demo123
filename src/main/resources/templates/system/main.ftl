<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/static/layui/css/layui.css" media="all">
    <script src="/static/layui/layui.js"></script>
</head>
<body>
<div>
    这是首页<#if names??>${names}</#if>
    <table width="400" border="2" cellspacing="0" cellpadding="0">
        <#if listes??>
            <#list listes as value>
                <tr>
                <td>${value.id}</td>
                <td>${value.name}</td>
            </tr>
            </#list>
        </#if>
    </table>
</div>

<table class="layui-hide" id="test"></table>
<script >
    layui.use('table', function(){
        var table = layui.table;
        table.render({
            elem: '#test'
            ,url:'/page'
            ,cols: [[
                {field:'id', width:80, title: 'ID', sort: true}
                ,{field:'name', width:80, title: '用户名'}
            ]]
            ,page: true
            ,width:400
        });
    });
</script>
</body>
</html>