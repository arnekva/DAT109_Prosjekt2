package expo2019;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RedigereStand
 */
@WebServlet("/RedigereStand")
public class RedigereStandServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	private StandEAO StandEAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RedigereStandServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Stand> standliste = StandEAO.hentAlleStands();
		String standid = request.getParameter("standid");
		if(standid != null) {
		int standid1 = Integer.parseInt(standid);
		Stand stand = StandEAO.hentStandPaaPK(standid1);
		request.getSession().setAttribute("stand", stand);
		request.getSession().setAttribute("standliste", standliste);
		}
		request.getRequestDispatcher("WEB-INF/endrestand.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Stand stand = StandEAO.hentStandPaaPK(Integer.parseInt(request.getParameter("standid")));
		Redigere redigere = new Redigere(request,StandEAO, stand);
		
			HttpSession sesjon = request.getSession(false);
			if (sesjon != null) {
				sesjon.invalidate();
			}
			sesjon = request.getSession(true);
			
			redigere.redigereStand(request.getParameter("tittel"), request.getParameter("beskrivelse"), request.getParameter("gruppenavn"), request.getParameter("lokasjon"));
			
			response.sendRedirect("stands");
	}

}
