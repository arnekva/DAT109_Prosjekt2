package expo2019;

import java.io.IOException;

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

	@EJB
	private StandEAO standEAO;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sesjon = request.getSession(false);
		if (sesjon.getAttribute("user") != null || sesjon.getAttribute("admin") != null) {
			response.sendRedirect("stands" + "?alreadyLoggedIn");
		} else {
			sesjon = request.getSession(true);
			sesjon.removeAttribute("feilmelding");
			String feilmelding = null;
			if (request.getParameter("nosession") != null) {
				feilmelding = "Vennligst logg inn for å avgi stemme.";
			}
			if (feilmelding != null) {
				sesjon.setAttribute("feilmelding", feilmelding);
				//TODO: behandle feilmelding i JSP
			}
			request.getRequestDispatcher("WEB-INF/logginn.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		LoggInn logginn = new LoggInn(request, standEAO);

		if (logginn.isLogginnValid()) {
			HttpSession sesjon = request.getSession(false);
			if (sesjon != null) {
				sesjon.invalidate();
			}
			sesjon = request.getSession(true);
			// sesjon.setMaxInactiveInterval(100);
			User user = logginn.hentUser();
			if (user.getTlfnr() == 99999999) {
				sesjon.setAttribute("admin", user);
			} else {
				sesjon.setAttribute("bruker", user);
			}
			response.sendRedirect("stands");
		} else {
			logginn.genererFeilmelding();
			request.getSession().setAttribute("logginn", logginn);
			response.sendRedirect("logginn");
		}
	}

}
