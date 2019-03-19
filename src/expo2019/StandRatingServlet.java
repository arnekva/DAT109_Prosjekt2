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
 * Servlet implementation class StandRatingServlet
 */
@WebServlet("/score")
public class StandRatingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@EJB
	private StandEAO StandEAO;

	/**
	 *  @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session == null || session.getAttribute("admin") == null) {
			response.sendRedirect("logginn" + "?noAdmin");
		}else {
			List<Stand> stands = StandEAO.hentAlleStands();
			Stand.sorter(stands);
			double scoreTest = StandEAO.hentScorePaaPk(1, 90909090);
			System.out.println(scoreTest);
			request.getSession().setAttribute("stands", stands);
			
			request.getRequestDispatcher("WEB-INF/score.jsp").forward(request, response);
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
