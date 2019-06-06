<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/6/6
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>图书列表</title>
    <script
    src="http://code.jquery.com/jquery-3.4.1.min.js"
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
    crossorigin="anonymous"></script>
</head>
<body>
<h1>图书列表</h1>
<a href="/book/rentList">借阅记录</a>


<table>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.bookId}</td>
            <td>${u.name}</td>
            <td>${u.number}</td>
        </tr>
    </c:forEach>

</table>
<script>
    $(function(){
        $(".button-rent").click(function(){
            var bookId =  $(this).attr("book-id");
            $.post("/book/"+bookId+"/appoint",{bookId:bookId,studentId:123456},function (res) {
                console.log(res);
                if(res.success==true){
                    alert(res.data.stateInfo);
                    window.location.reload();
                }else{
                    alert(res.stateInfo);
                }
            })
        });
        $(".button-return").click(function(){
            var bookId =  $(this).attr("book-id");
            $.post("/book/"+bookId+"/returnBook",{bookId:bookId,studentId:123456},function (res) {
                console.log(res);
                if(res.success==true){
                    alert(res.data.stateInfo);
                    window.location.reload();
                }else{
                    alert(res.stateInfo);
                }
            })
        })

    })
</script>
</body>
</html>
