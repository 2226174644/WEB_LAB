<%--
  Created by IntelliJ IDEA.
  User: 22261
  Date: 2019/12/22
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="text-align: center; margin-top: 140px">
    <h1>请回复</h1>
    <form action="ReplyMessage" method="post">
        <h1 >回复给：<%=request.getParameter("target")%></h1>
        <table style="margin-left: 37%" border="1">
            <caption>填写回复信息</caption>
            <tr>
                <td>回复内容</td>
                <td><textarea name="message" rows="5" cols="35"></textarea></td>
            </tr>
        </table>
        <textarea name="targetName" style="display:none;"><%=request.getParameter("target") %></textarea>
        <input type="submit" value="提交" /> <input type="reset" value="重置" />
    </form>
    <a href="main.jsp">返回留言板界面</a>
</div>
</body>
</html>
