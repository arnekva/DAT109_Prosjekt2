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
	public double hentScorePaaPk(int standid, int tlfnr) {
		TypedQuery<StandRating> query = em.createQuery("SELECT score FROM standrating WHERE tlfnr="+tlfnr+" AND standid="+standid, StandRating.class);
		StandRating standrating = query.getSingleResult();
		double score = standrating.getRating();
		return score;
	}
}
