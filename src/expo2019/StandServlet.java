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
 * Servlet implementation class StandServlet
 */
@WebServlet("/stand")
public class StandServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public StandServlet() {
		// TODO Auto-generated constructor stub
	}

	@EJB
	private StandEAO standEAO;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sesjon = request.getSession(true);
		if(sesjon.getAttribute("feilmelding") != null) {
		sesjon.removeAttribute("feilmelding");
		}
		String feilmelding = null;
		if (request.getParameter("invalidRating") != null) {
			feilmelding = "Stemmen ble ikke registrert.";
		} else if (request.getParameter("illegalVote") != null) {
			feilmelding = "Administrator kan ikke stemme.";
		}
		if (feilmelding != null) {
			sesjon.setAttribute("feilmelding", feilmelding);
			//TODO: behandle feilmelding i JSP
		}

		String standid = request.getParameter("standid");
		if(sesjon.getAttribute("standid") != null) {
		request.getSession().removeAttribute("standid");
		}
		if (!standEAO.kanKonverteres(standid)) {
			response.sendRedirect("stand" + "?unknownStandId");
		}
		int id = Integer.parseInt(standid);
		Stand stand = standEAO.hentStandPaaPK(id);

		sesjon.setAttribute("stand", stand);
		sesjon.setAttribute("standid", standid);
		request.getRequestDispatcher("WEB-INF/stand.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession sesjon = request.getSession(false);
		if (sesjon.getAttribute("bruker") != null || sesjon.getAttribute("admin") != null) {
			response.sendRedirect("logginn" + "?nosession");
		} else {
			String ratingParam = request.getParameter("stars");
			double rating = 0;

			int standid = 0;
			try {
				rating = Double.parseDouble(ratingParam);
				standid = Integer.parseInt(request.getParameter("standid"));
			} catch (Exception e) {
				response.sendRedirect("stand" + "?standid=" + standid + "&invalidRating");
			}
			if (sesjon.getAttribute("admin") != null) {
				response.sendRedirect("stand" + "?standid=" + standid + "&illegalVote");
			} else if (sesjon.getAttribute("bruker") == null) {
				response.sendRedirect("logginn" + "?nosession");
			} else {
				User user = (User) sesjon.getAttribute("bruker");
				Stand stand = standEAO.hentStandPaaPK(standid);
				StandRating standrating = new StandRating(user, stand, rating);

				standEAO.leggTilStandRating(standrating);
				response.sendRedirect("stand" + "?standid=" + standid);
			}
		}
	}

}
