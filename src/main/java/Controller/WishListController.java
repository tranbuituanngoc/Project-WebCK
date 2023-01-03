package Controller;

import database.WishListDAO;
import model.Propertie;
import model.User;
import model.WishList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "WishListController", value = "/du-an-quan-tam")
public class WishListController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equals("them")) {
            addToWishList(request, response);
        }
    }



    protected void addToWishList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String idS = request.getParameter("id_duan");
        String url= request.getParameter("url");
        int id_duan = Integer.parseInt(idS);
        Propertie propertie = new Propertie();
        propertie.setId_duan(id_duan);
        ArrayList<Propertie> list;
        WishListDAO wishListDAO = new WishListDAO();
        WishList w = new WishList();
        w.setId_user(user.getId_User());
        if (user == null) {
            response.sendRedirect("/error/401.jsp");
        } else {
            list = wishListDAO.selectByUserId(w);
            if (list.size() > 0) {
                for (Propertie p : list) {
                    if (p.getId_duan() == propertie.getId_duan()) {
                        wishListDAO.delete(id_duan);
                    } else {
                        WishList wishList = new WishList();
                        wishList.setId_user(user.getId_User());
                        wishList.setId_duan(id_duan);
                        wishListDAO.insert(wishList);
                    }
                }
            } else {
                WishList wishList = new WishList();
                wishList.setId_user(user.getId_User());
                wishList.setId_duan(id_duan);
                wishListDAO.insert(wishList);
            }
        }
        url=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()+url;
        System.out.println(url);
//        RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/"+url);
//        requestDispatcher.forward(request, response);
        response.sendRedirect(url);
    }
}
