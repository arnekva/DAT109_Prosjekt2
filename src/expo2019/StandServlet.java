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
		HttpSession sesjon = request.getSession(false);
		boolean erLoggetInn = false;
		
		String standid = request.getParameter("standid");
		request.getSession().removeAttribute("standid");
		if (!standEAO.kanKonverteres(standid)) {
			response.sendRedirect("feilmelding" + "?unknownStandId");
		}

		Stand stand = standEAO.hentStandPaaPK(Integer.parseInt(standid));

		if (sesjon.getAttribute("bruker") != null) {
			erLoggetInn = true;
		}
		request.getSession().setAttribute("stand", stand);
		request.getSession().setAttribute("standid", standid);
		request.getRequestDispatcher("WEB-INF/stand.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession sesjon = request.getSession(false);
		if (sesjon == null || sesjon.getAttribute("bruker") == null) {
			response.sendRedirect("logginn" + "?nosession");
		}
		String ratingParam = request.getParameter("rating");
	 double rating = 0;
	 int tlfnr = 0;
	 String standid = request.getParameter("standid");
		try {
			rating = Double.parseDouble(ratingParam);
		} catch(Exception e) {
			response.sendRedirect("feilmelding" + "?invalidRating");
		}

		
		User user = (User) sesjon.getAttribute("bruker");

		StandRating standrating = new StandRating(tlfnr, user.getTlfnr(), rating);
		
		standEAO.leggTilStandRating(standrating);
		response.sendRedirect("stand" + "?ratingValid");
	
	}

}
