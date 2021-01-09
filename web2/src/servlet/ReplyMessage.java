package servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Login;
import DAO.LoginDao;
import DAO.MessBor;

@WebServlet("/ReplyMessage")
public class ReplyMessage extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ReplyMessage() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        // 设置响应编码
        response.setContentType("utf-8");
        String targetName=request.getParameter("targetName");
        String message=request.getParameter("message");
        Login replyMessage=(Login) request.getSession().getAttribute("login");
        MessBor mb=new MessBor();
        mb.setTime(new Date(System.currentTimeMillis()));
        mb.setId(replyMessage.getId());
        mb.setName(replyMessage.getName());
        mb.setMessage(message);
        mb.setTarget(targetName);
        System.out.println("message："+message);
        System.out.println("回复对象："+targetName);
        if (new LoginDao().addReply(mb)){
            response.sendRedirect("success.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
