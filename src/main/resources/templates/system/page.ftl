<!DOCTYPE html>
<html  lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Title</title>
</head>

<body>
这是首页
<table>
    <#if pageinfo??>
    <#list pageinfo.getList() as pageinfo >
        <tr>
            <td>${pageinfo.id}</td>
            <td>${pageinfo.name}</td>
        </tr>
    </#list>
    </#if>
</table>
<nav>
    <ul class="pagination">
        <li>
            <div>
                总条数：<span>${pageinfo.getTotal()}</span>&nbsp;&nbsp;
                总页数：<span>${pageinfo.getPages()}</span>&nbsp;&nbsp;
                当前页码：<span>${pageinfo.getPrePage()+1}</span>
            </div>
        </li>
        <li>
            <a href="/page1?pageNum=1&pageSize=${pageinfo.pageSize}" aria-label="Previous">
                <span aria-hidden="true">&laquo;首页</span>
            </a>

        </li>
        <li>
            <a href="/page1?pageNum=${pageinfo.pageNum -1}&pageSize=${pageinfo.pageSize}" aria-label="Previous">
                <span aria-hidden="true">&laquo;上一页</span>
            </a>
        </li>

        <li>
            <a href="/page1?pageNum=${pageinfo.pageNum +1}&pageSize=${pageinfo.pageSize} " aria-label="Next">
                <span aria-hidden="true">下一页&raquo;</span>
            </a>
        </li>

        <li>
            <a href="/page1?pageNum=${pageinfo.total}&pageSize=${pageinfo.pageSize}" aria-label="Next">
                <span aria-hidden="true">尾页&raquo;</span>
            </a>
        </li>
        <li>
            共<span>${totalPages}</span>页
        </li>
    </ul>
</nav>


</body>
</html>