package expo2019;

import javax.servlet.http.HttpServletRequest;


public class LoggInn {

	private String mobilnr;
	private String passord;
	private String feilmelding;
	
	private String tillatmobilnr = "^[0-9]+$";
	private String tillatpassord = "^[a-zæøåA-ZÆØÅ0-9 .]+$";
	
	private StandEAO standEAO;
	
	public LoggInn(HttpServletRequest request, StandEAO standEAO) {
		this.mobilnr = (String) request.getParameter("mobil");
		this.passord = (String) request.getParameter("passord");
		this.feilmelding = "";
		this.standEAO = standEAO;
	}
	
	/**
	 * Sjekker om brukerens input er lovlig.
	 * @return boolean true eller false 
	 */
	public boolean isInputValid() {
		return this.mobilnr.matches(tillatmobilnr) && this.passord.matches(tillatpassord);
	}
	
	/**
	 * Generer en feilmelding dersom en av inputene er feil. Pga sikkerhet varsles det ikke om hvilken som er feil
	 */
	public void genererFeilmelding() {
		if (!isInputValid() || !isLogginnValid()) {
			mobilnr = "";
			passord = "";
			feilmelding = "Ugyldig telefonummer og/eller passord!";
		}
	}
	
	/**
	 * Sjekker om strengen brukeren har tastet inn matcher passordet i databasen (hashes)
	 * @return boolean true eller false
	 */
	public boolean isLogginnValid() {
		try {
			if (isInputValid()) {
				User user = hentUser();
				return PassordUtil.sjekkPassord(this.passord, user.getPassord());
			} else {
				return false;
			} 
		} catch (Exception e) {
			return false;
		}
	}

	public String getMobilnr() {
		return mobilnr;
	}

	public String getPassord() {
		return passord;
	}

	public String getFeilmelding() {
		return feilmelding;
	}
	
	/**
	 * Henter et User-objekt fra telefonnummer (primærnøkkel)
	 * @return User object
	 */
	public User hentUser() {
		User user = standEAO.hentBrukerPaaPK(Integer.parseInt(this.mobilnr));
		return user;
	}
}
