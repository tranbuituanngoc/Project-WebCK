package Controller;

import database.FilterDAO;
import model.Propertie;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Filter", value = "/loc-san-pham")
public class Filter extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameProp=request.getParameter("nameProp");
        String address= request.getParameter("address");
        String service= request.getParameter("service");

        FilterDAO filterDAO=new FilterDAO();
        ArrayList<Propertie> list= (ArrayList<Propertie>) filterDAO.filter(service,address,nameProp);
        request.setAttribute("listFilter", list);
        RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/filter.jsp");
        requestDispatcher.forward(request, response);


    }
}
