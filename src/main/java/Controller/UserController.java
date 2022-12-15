package Controller;

import Util.Encode;
import database.UserDAO;
import model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "UserController", value = "/nguoi-dung")
public class UserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action.equals("dang-nhap")){
            Login(request,response);
        }else if (action.equals("dang-xuat")){
            Logout(request,response);
        }else if (action.equals("dang-ki")){
            Register(request,response);
        }else if (action.equals("doi-mat-khau")){
            ChangePass(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    private void Login(HttpServletRequest request, HttpServletResponse response)  {
        try {
            String username = request.getParameter("username");
            String pass = request.getParameter("password");
            pass = Encode.encodeToSHA1(pass);

            User user = new User();
            user.setUserName(username);
            user.setPass(pass);

            UserDAO userDAO = new UserDAO();
            User u = userDAO.selectByUserNameAndPass(user);
            String url = "";
            if (u != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", u);
                url = "/index.jsp";
            } else {
                request.setAttribute("error", "Tên đăng nhập hoặc mật khẩu không đúng!");
                url = "/user/signin.jsp";
            }
            RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(url);
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void Logout(HttpServletRequest request, HttpServletResponse response) {
        try {
            HttpSession session = request.getSession();
            // remove session
            session.invalidate();

            String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
            response.sendRedirect(url + "/index.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void Register(HttpServletRequest request, HttpServletResponse response) {
        try {
            String username = request.getParameter("name");
            String email = request.getParameter("email");
            String tel = request.getParameter("tel");
            String password = request.getParameter("password");
            String com_pass = request.getParameter("confirm-password");

            request.setAttribute("username", username);
            request.setAttribute("email", email);
            request.setAttribute("tel", tel);

            String url = "";
            String error = "";
            UserDAO userDAO = new UserDAO();
            if (userDAO.checkUserName(username)) {
                error += "Tên đăng nhập đã tồn tại</br>";
            }
            if (!password.equals(com_pass)) {
                error += "Mật khẩu nhập lại không khớp</br>";
            } else {
                password = Encode.encodeToSHA1(password);
            }
            if (error.length() != 0) {
                url = "/user/signup.jsp";
            } else {
                Random rd = new Random();
                String random = System.currentTimeMillis() + rd.nextInt(100) + "";
                String id_user = "kh" + random.substring(random.length() - 8);
                User user = new User(id_user, username, email, tel, password);
                userDAO.insert(user);
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                url = "/user/success.jsp";
            }
            request.setAttribute("error", error);
            RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(url);
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void ChangePass(HttpServletRequest request, HttpServletResponse response){
        try {
            String oldPass = request.getParameter("oldPassword");
            String newPassword = request.getParameter("newPassword");
            String comNewPass = request.getParameter("comNewPass");

            String oldPass_Encode = Encode.encodeToSHA1(oldPass);
            String error = "";
            String url = "/user/changePass.jsp";

            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");
            if (user == null) {
                response.sendRedirect(url + "/error/401.jsp");
            } else {
                if (!oldPass_Encode.equals(user.getPass())) {
                    error = "Mật khẩu hiện tại không chính xác!";
                } else {
                    if (!newPassword.equals(comNewPass)) {
                        error = "Mật khẩu nhập lại không khớp!";
                    } else {
                        String newPass_Encode = Encode.encodeToSHA1(newPassword);
                        if (newPass_Encode.equals(oldPass_Encode)) {
                            error = "Mật khẩu mới không được trùng với mật khẩu cũ!";
                        } else {
                            user.setPass(newPass_Encode);
                            UserDAO userDAO = new UserDAO();
                            if (userDAO.changePass(user)) {
                                error = "Thay đổi mật khẩu thành công!";
                            } else error = "Thay đổi mật khẩu thất bại!";
                        }
                    }
                }
            }
            request.setAttribute("error", error);
            RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(url);
            requestDispatcher.forward(request, response);
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }
}
