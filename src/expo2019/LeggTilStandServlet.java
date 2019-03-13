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
 * Servlet implementation class LeggTilStandServlet
 */
@WebServlet("/leggtil")
public class LeggTilStandServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	private StandEAO standEAO;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().removeAttribute("feilmelding");
		HttpSession session = request.getSession(false);
		if (session.getAttribute("admin") == null) {
			response.sendRedirect("stands" + "?noAdmin");	
		} else {
			if (request.getParameter("invalidInput") != null) {
				String feilmelding = "Ugyldig input i registrering av stand.";
				request.getSession().setAttribute("feilmelding", feilmelding);
			}
			request.getRequestDispatcher("WEB-INF/leggtilstand.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		if(session.getAttribute("admin") == null) {
			response.sendRedirect("stands" + "?noAdmin");
		}
		Stand stand = new Stand(request);
		if (!stand.hasValidInput()) {
			response.sendRedirect("LeggTilStandServlet" + "?invalidInput");
		} else {
			Integer id = standEAO.hentNesteId();
			System.out.println(id);
			//TODO: Fiks link
			String qr = "https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=" 
			+ "localhost:8080/DAT109_Prosjekt3/stand" + "?id=" + id;
			stand.setQrUrl(qr);
			standEAO.leggTilStand(stand);
			response.sendRedirect("stands");
		}
		
		
		
	}

}
