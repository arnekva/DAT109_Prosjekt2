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
 * Servlet implementation class SlettBrukerServlet
 */
@WebServlet("/slettbruker")
public class SlettBrukerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private StandEAO standEAO;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SlettBrukerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesjon = request.getSession(false);
	    if(sesjon.getAttribute("bruker") != null) {
	    	User user = (User) sesjon.getAttribute("bruker");
	    	standEAO.slettBrukerPaaPK(user.getTlfnr());
        	sesjon.invalidate();
        }
		response.sendRedirect("registrering");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	
}
