/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import dal.AccountDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Account;

/**
 *
 * @author Benjamin
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        request.setAttribute("action", action);
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String login = request.getParameter("login");
        String register = request.getParameter("register");
        AccountDAO accountDAO = new AccountDAO();
        if (email != null && password != null) {
            Account account = new Account();
            account.setName(email);
            account.setPassword(password);
            if (login != null) {
                Account a = accountDAO.getAccount(account);
                if (a != null) {
                    HttpSession session = request.getSession();
                    session.setAttribute("customerLogged", a);
                    String remember = request.getParameter("remember");
                    if (remember != null && remember.equals("on")) {
                        Cookie id = new Cookie("id", String.valueOf(a.getAccountId()));
                        id.setMaxAge(604800);
                        Cookie username = new Cookie("username", a.getName());
                        username.setMaxAge(604800);
                        response.addCookie(id);
                        response.addCookie(username);
                    }
                    response.sendRedirect("Home");
                    return;
                } else {
                    request.setAttribute("alert", "Tài khoản không tồn tại hoặc sai mật khẩu, <a href='Login?action=register'>Đăng ký ngay</a>");
                }
            }
            if (register != null) {
                String re_password = request.getParameter("re_password");
                if (re_password.equals(password)) {
                    account.setRole(1);
                    Account acc = accountDAO.getAccountByName(account);
                    if (acc != null) {
                        request.setAttribute("alert", "Tài khoản đã tồn tại, vui lòng nhập mật khẩu để đăng nhập");
                    } else {
                        if (accountDAO.accountRegister(account) != 0) {
                            request.setAttribute("alert", "Đăng ký thành công. Đăng nhập ngay");
                        } else {
                            request.setAttribute("alert", "Có lỗi xảy ra");
                        }
                    }
                } else {
                    request.setAttribute("alert", "Mât khẩu nhập lại không khớp với mật khẩu vui lòng nhập lại");
                }
            }
        }
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
