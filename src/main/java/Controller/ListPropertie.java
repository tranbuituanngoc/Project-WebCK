package Controller;

import model.Propertie;
import service.PropertieService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListPropertie", value = "/ListPropertie")
public class ListPropertie extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PropertieService pds = new PropertieService();
        List<Propertie> listProperties = pds.getListPropertie();
        request.setAttribute("list2", listProperties);
        request.getRequestDispatcher("properties.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
