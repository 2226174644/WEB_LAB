<%--
  Created by IntelliJ IDEA.
  User: 22261
  Date: 2019/12/21
  Time: 16:04
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
<div style="text-align: center; margin-top: 140px">
    <h1>请留言</h1>
    <form action="LeaveMessage" method="post">
        <table style="margin-left: 37%" border="1">
            <caption>填写留言信息</caption>
            <tr>
                <td>留言标题</td>
                <td><input style="text-align: center" type="text" name="title" /></td>
            </tr>
            <tr>
                <td>留言内容</td>
                <td><textarea name="message" rows="5" cols="35"></textarea></td>
            </tr>
        </table>
        <input type="submit" value="提交" /> <input type="reset" value="重置" />
    </form>
    <a href="comment.jsp">返回留言板界面</a>
</div>

</body>
</html>
