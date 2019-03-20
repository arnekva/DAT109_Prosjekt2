package expo2019;

import javax.servlet.http.HttpServletRequest;

public class Redigere extends Stand{
	
	private StandEAO standEAO;
	private String tittel;
	private String gruppenavn;
	private String lokasjon;
	private String bilde;
	private String beskrivelse;
	
	private Stand stand;
	
	public Redigere(HttpServletRequest request, StandEAO StandEAO) {
		this.tittel = (String) request.getParameter("tittel");
		this.gruppenavn = (String) request.getParameter("gruppenavn");
		this.lokasjon = (String) request.getParameter("lokasjon");
		this.beskrivelse = (String) request.getParameter("beskrivelse");
		this.standEAO = StandEAO;
		this.stand = StandEAO.hentStandPaaPK(0);
	}
	
	public void redigereStand(String tittel, String beskrivelse, String gruppenavn, String lokasjon) {
		stand.setBeskrivelse(beskrivelse);
		stand.setGruppenavn(gruppenavn);
		stand.setLokasjon(lokasjon);
		stand.setTittel(tittel);
		
		standEAO.redigereStand(stand);
	}
	
}
