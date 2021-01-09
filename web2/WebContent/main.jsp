
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
         pageEncoding="UTF-8"%>

<%@page import="DAO.*" %>
<%@page import="DAO.MessBor.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>WEB_LAND</title>
    <script type="text/javascript">
        function check() {
            var title = document.getElementById("biaoti").value;
            var message = document.getElementById("neirong").value;
            if ( title==""||message=="" ) {
                alert("标题和内容不能为空")
                return false;
            }
             return true;
        }
    </script>
    <link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="i_top">
<div class="top_login" >
    <a href="login.jsp" >登陆</a>|
    <a  href="javascript:alert('暂无注册，请直接登陆');">注册</a>
</div>
</div>
<div class="header">
    <div class="w1300">
        <div class="logo">
<a href="">
    <img src="img\logo.png" alt>
</a>
        </div>
        <div class="inavbox">
    <ul id="inav" class="inav">
        <li class="nLi">
        <h3>
            <a target="_blank" href="">"课程介绍"</a>
        </h3>
    </li>
        <li class="nLi">
            <h3>
                <a target="_blank" href="">"教学大纲"</a>
            </h3>
        </li>

        <li class="nLi">
            <h3>
                <a target="_blank" href="">"教学课件"</a>
            </h3>
        </li>
        <li class="nLi">
            <h3>
                <a target="_blank" href="">"视频资料"</a>
            </h3>
        </li>
        <li class="nLi">
            <h3>
                <a target="_blank" href="">"评论留言"</a>
            </h3>
        </li>
    </ul>
        </div>
    </div>
    <div class="avline"></div>
    </div>
<div class="newspart">
    <div class="newstitle">
        <h2 class="title_icon01">课程介绍</h2>
    </div>
    <div class=news_box" style="margin: 0 auto" >
    <div class="left">
        <div class="news_pic">
<img src="img/5.jpg"width="100%" height="100%" border="0">
    </div>
    </div>
        <div class="center"></div>
        <div class="right">
            <div class="right_content"><p style="font-size: 34px">web（World Wide Web）即全球广域网，也称为万维网，
                它是一种基于超文本和HTTP的、全球性的、动态交互的、跨平台的分布式图形信息系统。
                是建立在Internet上的一种网络服务，为浏览者在Internet上查找和浏览信息提供了图形化的、易于访问的直观界面，
                其中的文档及超级链接将Internet上的信息节点组织成一个互为关联的网状结构。</p></div>

        </div>
</div>
</div>
<div class="i-mian">
    <div class="item_1">
        <div class="newstitle">
            <h2 class="title_ico01">教学大纲</h2>
        </div>
        <div class="web_picture">
            <img src="img/6.png"width="100%" height="100%" border="0">
        </div>
    </div>
    <div class="item_w1300">
    <div class="item_left">
        <div class="item_left1">
            <div class="ititle">
                <h2 class="title_ico01">教学课件</h2>
            </div>
            <div class="ppt">
                <ul>
                    <li>
                        <a href="ppt_files/Web技术00-课程说明.ppt">web00-课程说明
                            <span>[2019-12-19]</span>
                        </a>
                    </li>
                    <li>
                        <a href="ppt_files/Web技术01-HTML-1.pptx">web01-HTML-1
                            <span>[2019-12-19]</span>
                        </a>
                    </li>
                    <li>
                        <a href="ppt_files/Web技术02-HTML-2.pptx">web02-HTML-2
                            <span>[2019-12-19]</span>
                        </a>
                    </li>
                    <li>
                        <a href="ppt_files/Web技术03-CSS-1.pptx">Web技术03-CSS-1
                            <span>[2019-12-19]</span> </a>
                    </li>
                    <li>
                        <a href="ppt_files/Web技术04-CSS-2.pptx">Web技术04-CSS-2
                            <span>[2019-12-19]</span>
                        </a>
                    </li>
                    <li>
                        <a href="ppt_files/Web技术05-CSS-3.pptx">Web技术05-CSS-3
                            <span>[2019-12-19]</span>
                        </a>
                    </li>
                    <li>
                    <a href="ppt_files/Web技术06-JS-1.pptx">Web技术06-JS-1
                        <span>[2019-12-19]</span>
                    </a>
                </li>
                    <li>
                        <a href="ppt_files/Web技术07-JS-2.pptx">Web技术07-JS-2
                            <span>[2019-12-19]</span></a>
                    </li>
                    <li>
                        <a href="ppt_files/Web技术08-Servlet.ppt">Web技术08-Servlet
                            <span>[2019-12-19]</span></a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="item_left2">
            <div class="ititle">
                <h2 class="title_ico01">视频资料</h2>
            </div>
            <div class="video">
                <video width="810" height="430"  src="ppt_files/宣传部.mp4" controls autoplay></video>
            </div>

        </div>
    </div>
    <div class="item_right">
        <div class="ititle">
            <h2 class="title_ico01">评论留言</h2>
    </div>

        <div class="textArea">
            <form action="reply.jsp" method="post">

                    <%
                        ArrayList<MessBor> al = new ArrayList<MessBor>();
                        al = (ArrayList) session.getAttribute("al");
                        if (al != null) {
                            Iterator iter = al.iterator();
                            while (iter.hasNext()) {
                                MessBor mb = (MessBor) iter.next();
                    %>
                <form action="reply.jsp" method="post">
                <div class="comment">
                    <a name="target" style="display:none"><%=mb.getName()%></a>
                    <a ><%=mb.getName()%>
                        <span style="float: right;color: #a9a9a9;">[<%=mb.getTime().toString()%>]</span></a>
                    <h2 style="margin: 0 auto ;text-align: center">标题：<%=mb.getTitle()%></h2>
                    <h4>&nbsp;&nbsp;&nbsp;&nbsp;<%=mb.getMessage()%></h4>
                    <a href="reply.jsp?target=<%=mb.getTitle()%>"style="float:right;margin-right: 3px; color: red;text-decoration:underline ;" >回复</a>
                    <h4>&nbsp;&nbsp; </h4>
                    <%
                        ArrayList<MessBor> bl = new ArrayList<MessBor>();
                        bl = (ArrayList) session.getAttribute("bl");
                        if (bl != null) {
                            Iterator iter1 = bl.iterator();
                            while (iter1.hasNext()) {
                                MessBor mb1 = (MessBor) iter1.next();
                                if(mb1.getTarget().equals(mb.getTitle())) {
                    %> <div class="reply">
                    <a ><%=mb1.getName()%>
                        <span>[<%=mb1.getTime().toString()%>]</span></a>
                    <br><h5>&nbsp;&nbsp;&nbsp;&nbsp;<%=mb1.getMessage()%></h5>
                </div>
                    <% }
                                }
                    }%>
                </div>
                </form>
                    <%
                            }
                        }
                    %>

            </form>
        </div>
        <div class="inputArea">
            <div style="text-align: center; ">
            <h3 style="text-align: center; ">请留言</h3>
            <form action="LeaveMessage" method="post" onsubmit="return check();">
                <table style="text-align: center;overflow:auto;display: block; " border="1 "min-width="100%" min-height="133px">

                    <tr>
                        <td>留言标题</td>
                        <td><input id="biaoti"style="margin:0 auto ;width: 380px;height: 40px" type="text" name="title" /></td>
                    </tr>
                    <tr>
                        <td>留言内容</td>
                        <td><textarea id="neirong" name="message" rows="4" cols="48"></textarea></td>
                    </tr>
                </table>
                 <input style="float:right ;margin-right: 20px"type="reset" value="重置" />
                <input style="float:right; margin-right: 0px" type="submit" value="提交"  />
            </form>
        </div>
        </div>
    </div>
    </div>
    </div>

<div class="foot">
    <div class="foot_content" class="" style="text-align:center" >
        <h3  style="margin-top:30px; color: white" >Designed by LanYihao</h3>
    </div>
</div>
</body>
</html>