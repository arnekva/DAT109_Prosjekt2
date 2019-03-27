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
@WebServlet("/stands")
public class StandListeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


    @EJB
    private StandEAO standEAO;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesjon = request.getSession(false);
		sesjon.removeAttribute("noadmin");
		List<Stand> standliste = standEAO.hentAlleStands();
		if(request.getParameter("noAdmin")!=null) {
			sesjon.setAttribute("noadmin", "Kun juryen har tilgang til den siden.");
		}
		request.getSession().setAttribute("standliste", standliste);
		
		request.getRequestDispatcher("WEB-INF/standliste.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
