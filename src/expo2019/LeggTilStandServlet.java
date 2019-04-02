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
	 * 
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession(false);
		if(session.getAttribute("admin") == null) {
			response.sendRedirect("stands" + "?noAdmin");
		}
		Stand stand = new Stand(request);
		if (!stand.hasValidInput()) {
			response.sendRedirect("leggtil" + "?invalidInput");
		} else {
			Integer id = standEAO.hentNesteId();
			System.out.println(id);
			//TODO: Fiks link
			String qr = "https://api.qrserver.com/v1/create-qr-code/?size=1000x1000&data=" 
			+ "http://data1.hib.no:9090/expo2019_gruppe7/stand" + "?standid=" + id;
			stand.setQrUrl(qr);
			standEAO.leggTilStand(stand);
			response.sendRedirect("stands");
		}
		
		
		
	}

}
