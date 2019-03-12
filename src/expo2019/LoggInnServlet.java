package expo2019;


import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class StandListeServlet
 */
@WebServlet("/logginn")
public class LoggInnServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoggInnServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    @EJB
    private StandEAO standEAO;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().removeAttribute("userFeilmelding");
		HttpSession sesjon = request.getSession(false);
		if (sesjon != null && sesjon.getAttribute("bruker") != null) {
			response.sendRedirect("standliste" + "?alreadyLoggedIn");
		} else {
			if (request.getParameter("noUser") != null) {
				String userFeilmelding = "Det er kun registrerte brukere som får se standlisten.";
				request.getSession().setAttribute("userFeilmelding", userFeilmelding);
			}
			request.getRequestDispatcher("WEB-INF/logginn.jsp").forward(request, response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoggInn logginn = new LoggInn(request, standEAO);
		
		if(logginn.isLogginnValid()) {
			HttpSession sesjon = request.getSession(false);
			if(sesjon != null) {
				sesjon.invalidate();
			}
			sesjon = request.getSession(true);
			//sesjon.setMaxInactiveInterval(100);
			User user = logginn.hentUser();
			sesjon.setAttribute("bruker", user);
			response.sendRedirect("standliste");
		}else {
			logginn.genererFeilmelding();
			request.getSession().removeAttribute("userFeilmelding");
			request.getSession().setAttribute("logginn", logginn);
			response.sendRedirect("logginn");
		}
	}

}
