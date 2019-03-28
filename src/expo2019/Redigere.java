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
	
	/**
	 * Oppdaterer en stand som allerede ligger lagret i databasen med ny informajson
	 * @param request HttpRequest fra servlet
	 * @param StandEAO StandEAO som opprettes i servlet
	 * @param stand Et stand object som skal endres
	 */
	public Redigere(HttpServletRequest request, StandEAO StandEAO, Stand stand) {
		this.tittel = (String) request.getParameter("tittel");
		this.gruppenavn = (String) request.getParameter("gruppenavn");
		this.lokasjon = (String) request.getParameter("lokasjon");
		this.beskrivelse = (String) request.getParameter("beskrivelse");
		this.standEAO = StandEAO;
		this.stand = stand;
	}
	
	/**
	 * Redigerer standen
	 * @param tittel Ny tittel
	 * @param beskrivelse Ny beskrivelse
	 * @param gruppenavn Nye forfattere
	 * @param lokasjon Nytt exponummer
	 */
	public void redigereStand(String tittel, String beskrivelse, String gruppenavn, String lokasjon) {
		stand.setBeskrivelse(beskrivelse);
		stand.setGruppenavn(gruppenavn);
		stand.setLokasjon(lokasjon);
		stand.setTittel(tittel);
		
		standEAO.redigereStand(stand);
	}
	
}
