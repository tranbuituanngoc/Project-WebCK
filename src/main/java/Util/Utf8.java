package Util;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(filterName = "Utf8", urlPatterns = "/*")
public class Utf8 implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");
//       response.getWriter().println("Request đã đi qua filter");
        filterChain.doFilter(request, response);
    }

    public void destroy() {
    }

}
