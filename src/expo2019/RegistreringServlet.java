package expo2019;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistreringServlet
 */
@WebServlet("/RegistreringServlet")
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
		request.getRequestDispatcher("").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Registrering registrering = new Registrering();
		
		if(registrering.erAlleFeltGyldig()) {
			User user = registrering.newUser();
			request.getSession().removeAttribute("registrering");
			request.getSession().setAttribute("User", user);
			StandEAO.leggTilBruker(user);
			response.sendRedirect("stands");
		}else {
			registrering.genererFeilmelding();
			request.getSession().setAttribute("registrering", registrering);
			response.sendRedirect("registrering");
		}
	}

}

