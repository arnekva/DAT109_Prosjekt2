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
 * Servlet implementation class SlettStandServlet
 */
@WebServlet("/slettstand")
public class SlettStandServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	@EJB
	private StandEAO standEAO;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SlettStandServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesjon = request.getSession(false);
	    if(sesjon.getAttribute("admin") != null) {
	    	if (sesjon.getAttribute("stand") != null) {
	    		Stand stand = (Stand) sesjon.getAttribute("stand");
	    		standEAO.slettStandPaaPK(stand.getStandid());
	    	}	
        }
		response.sendRedirect("stands");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
