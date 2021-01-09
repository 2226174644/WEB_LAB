<%--
  Created by IntelliJ IDEA.
  User: 22261
  Date: 2019/12/21
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<div style="margin-left: 35%; margin-top: 100px; font-family: Microsoft YaHei">
    <h1>登录界面</h1>
    <form action="LoginServlet" method="post">
        <table>
            <tr>
                <td>账号:</td>
                <td><input name="name" type="text"></td>
            </tr>
            <tr>
                <td>密码:</td>
                <td ><input name="password" type="password"></td>
            </tr>
        </table>
        <input type="submit"  value="登录" style="font-size: 16px">
        &nbsp;&nbsp;<a href="javascript:alert('暂无注册，请直接登陆');">注册</a>
    </form>
</div>
</body>

</html>
