package expo2019;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;



@Stateless
public class StandEAO {

	@PersistenceContext(name = "expoPU")
	private EntityManager em;

	public synchronized void leggTilStand(Stand stand) {
		em.persist(stand);
	}

	public Stand hentStandPaaPK(int standid) {

		return em.find(Stand.class, standid);

	}
	
	public double hentScorePaaPk(int standid, int tlfnr) {
		String sql = "SELECT * FROM EXPO2019.standrating WHERE tlfnr="+tlfnr+" AND standid="+standid;
		Query query = em.createNativeQuery(sql, StandRating.class);
		StandRating standrating = (StandRating) query.getSingleResult();
		double score = standrating.getRating();
		return score;
	}
	
	public int hentNesteId() {
		
		try {
			List<Stand> alleStands = hentAlleStands();
			Stand siste = alleStands.get(0);
			for (int i = 1; i < alleStands.size(); i++) {
				if (alleStands.get(i).getStandid() > siste.getStandid()) {
					siste = alleStands.get(i);
				}
			}
			return siste.getStandid() + 1;
		} catch (Exception e) {
			return 1;
		}
	}

	public List<Stand> hentAlleStands() {

		List<Stand> stands = null;
		TypedQuery<Stand> query = em.createQuery("SELECT e FROM Stand e", Stand.class);
		stands = query.getResultList();

		return stands;
	}
	
	public double totalRating(Stand stand) {
		double rating = 0;
<<<<<<< HEAD
		
		TypedQuery<Integer> query = em.createQuery("SELECT rating FROM standrating WHERE standid = "+stand.getStandid(), Integer.class);
		List<Integer> resultat = query.getResultList();
=======
		String sql = "SELECT * FROM EXPO2019.standrating WHERE standid = "+stand.getStandid();
		Query query = em.createNativeQuery(sql, StandRating.class);
		List<StandRating> resultat = (List<StandRating>) query.getResultList();
>>>>>>> a6882da8983809f4df98e515fbcf32dab47fcf3a
		
		for (StandRating sr : resultat) {
			rating += sr.getRating();
		}
		
		rating = rating/resultat.size();
		
		return rating/1.0;
	}
	
	public User hentBrukerPaaPK(int tlfnr) {
		return em.find(User.class, tlfnr);
	}
	
	public boolean kanKonverteres(String i) {
		try {
			Integer.parseInt(i);
			return true;
		} catch(Exception e){
			return false;
		}
	}
	
	public synchronized void leggTilStandRating(StandRating standrating) {
		em.persist(standrating);
	}
	public synchronized void leggTilBruker(User user) {
		em.persist(user);
	}
	
}
