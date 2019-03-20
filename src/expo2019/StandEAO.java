package expo2019;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.rmi.server.Operation;
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
	
	public void setTotalRating(Stand stand) {
		double rating = 0;

		String sql = "SELECT * FROM EXPO2019.standrating WHERE standid = "+stand.getStandid();
		Query query = em.createNativeQuery(sql, StandRating.class);
		List<StandRating> resultat = (List<StandRating>) query.getResultList();
		
		for(StandRating sr : resultat) {
			rating += sr.getRating();
		}
		
		rating = (rating/resultat.size())/1.0;
		rating = round(rating, 3);
		em.merge(stand);
		stand.setKalkulertscore(rating);
		int id = stand.getStandid();
		stand = em.find(Stand.class, id);
		stand.setKalkulertscore(rating);
	}
	
	public void redigereStand(Stand stand) {
		String sql = "SELECT * FROM EXPO2019.stand WHERE standid = "+stand.getStandid();
		Query query = em.createNativeQuery(sql, StandRating.class);
		Stand resultat = (Stand) query.getSingleResult();
		
		resultat.setBeskrivelse(stand.getBeskrivelse());
		resultat.setTittel(stand.getTittel());
		resultat.setGruppenavn(stand.getGruppenavn());
		resultat.setLokasjon(stand.getLokasjon());	
		//resultat.setBilde(stand.getBilde());
		
		em.merge(resultat);
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
	public static double round(double value, int places) {
	    if (places < 0) throw new IllegalArgumentException();

	    BigDecimal bd = new BigDecimal(value);
	    bd = bd.setScale(places, RoundingMode.HALF_UP);
	    return bd.doubleValue();
	}
	
}
