package demo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by chitboon on 12/9/15.
 */
@WebServlet(name = "ControllerServlet", urlPatterns = "/controller")

public class ControllerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String guess = request.getParameter("guess");
        int guessInt = Integer.parseInt(guess);
        HttpSession session = request.getSession();
        String nric = (String)session.getAttribute("nric");
        int result = Guess.getInstance().guess(nric, guessInt);
        if (result == 0) {
            request.setAttribute("success", guessInt);
            getServletContext().getRequestDispatcher("/success.jsp").forward(request, response);
        } else if (result == 999) {
            getServletContext().getRequestDispatcher("/nomore.jsp").forward(request, response);
        } else {
            request.setAttribute("tryagain", result);
            getServletContext().getRequestDispatcher("/tryagain.jsp").forward(request, response);
        }
    }
}
