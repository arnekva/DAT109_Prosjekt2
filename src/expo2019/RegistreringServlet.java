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
 * Servlet implementation class RegistreringServlet
 */
@WebServlet("/registrering")
public class RegistreringServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	private StandEAO StandEAO;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistreringServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/registrer.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Registrering registrering = new Registrering(request,StandEAO);
		
		if(registrering.erAlleFeltGyldig()) {
			HttpSession sesjon = request.getSession(false);
			if (sesjon != null) {
				sesjon.invalidate();
			}
			sesjon = request.getSession(true);
			try {
				int tlf = Integer.parseInt(registrering.getTlf());
				User eksistensSjekk = StandEAO.hentBrukerPaaPK(tlf);
				if (eksistensSjekk != null) {
					registrering.setTlfFeil("Nummeret er allerede i bruk. Vennligst logg inn.");
					sesjon.setAttribute("Registrering", registrering);
					response.sendRedirect("registrering");
				}
			} catch (Exception e) {
				User user = registrering.newUser();
				if (user.getTlfnr() == 99999999) {
					request.getSession().setAttribute("admin", user);
				} else {
					request.getSession().setAttribute("bruker", user);
				}
				response.sendRedirect("stands");
			}
		} else {
			registrering.genererFeilmelding();
			request.getSession().setAttribute("Registrering", registrering);
			response.sendRedirect("registrering");
		}
	}
}

