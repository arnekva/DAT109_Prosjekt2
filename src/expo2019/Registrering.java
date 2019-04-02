package expo2019;

import javax.servlet.http.HttpServletRequest;

public class Registrering {

	private String passord;
	private String passordFeil;
	private String tlf;
	private String tlfFeil;
	private String repeterPassord;
	private String repeterFeil;
	
	private String tillatpassord = "^[a-zæøåA-ZÆØÅ0-9 .]+$";
	
	private StandEAO standEAO;
	
	public Registrering(HttpServletRequest request, StandEAO StandEAO) {
		this.passord = (String) request.getParameter("passord");
		this.tlf = (String) request.getParameter("tlf");
		this.repeterPassord = (String) request.getParameter("repeterPassord");
		this.standEAO = StandEAO;
	}
	
	/**
	 * Sjekker om alle felt i skjemaet er gyldige
	 * @return boolean true eller false
	 */
	public boolean erAlleFeltGyldig() {
		return (erTlfGyldig(this.tlf)) && (erPassordGyldig(this.passord)) && (erRepeterGyldig(this.repeterPassord));
	}
	

	/**
	 * Sjekker om et gitt telefonnummer er gyldig (og følger norske regler på 4- eller 9-)
	 * @param tlf String for telefonnummer fra parameter
	 * @return boolean true eller false
	 */
	public boolean erTlfGyldig(String tlf) {
		try {
			int nr = Integer.parseInt(tlf);
			return(((90000000 <= nr) && (nr <= 99999999)) || ((40000000 <= nr) && (nr <= 49999999)));
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	/** Sjekker første inntastning av passord
	 * @param passord
	 * @return
	 */
	public boolean erPassordGyldig(String passord) {
		return passord.matches(tillatpassord) && passord != null && passord.length() > 4;
	}
	
	/** Sjekker andre inntasting av passord
	 * @param repeterPassord
	 * @return
	 */
	public boolean erRepeterGyldig(String repeterPassord) {
		return erPassordGyldig(this.passord) && repeterPassord.equals(this.passord);
	}
	
	/**
	 * Lager en ny bruker
	 * @return Et User Object
	 */
	public User newUser() {
		int tlf2 = Integer.parseInt(this.tlf);
		String passordKryptert = PassordUtil.krypterPassord(this.passord);
		User user = new User(tlf2, passordKryptert);
		standEAO.leggTilBruker(user);
		return user;
	}
	
	/**
	 * Genererer feilmeldinger basert på hvilke(t) felt som er feil
	 */
	public void genererFeilmelding() {
		if(!erPassordGyldig(passord)) {
			this.passord = "";
			this.passordFeil = "Ugyldig Passord. Passordet må være minst 5 karakterer langt.";
		}
		if(!erRepeterGyldig(repeterPassord)) {
			this.repeterPassord = "";
			this.repeterFeil = "Passordene matcher ikke.";
		}
		if(!erTlfGyldig(tlf)) {
			this.tlf = "";
			this.tlfFeil = "Du har ikke skrevet inn et gyldig nummer. 8 siffer.";
		}
	}

	public String getPassord() {
		return passord;
	}

	public void setPassord(String passord) {
		this.passord = passord;
	}

	public String getTlf() {
		return tlf;
	}

	public void setTlf(String tlf) {
		this.tlf = tlf;
	}

	public String getRepeterPassord() {
		return repeterPassord;
	}

	public void setRepeterPassord(String repeterPassord) {
		this.repeterPassord = repeterPassord;
	}
	
	public String getPassordFeil() {
		return passordFeil;
	}

	public void setPassordFeil(String passordFeil) {
		this.passordFeil = passordFeil;
	}

	public String getTlfFeil() {
		return tlfFeil;
	}

	public void setTlfFeil(String tlfFeil) {
		this.tlfFeil = tlfFeil;
	}

	public String getRepeterFeil() {
		return repeterFeil;
	}

	public void setRepeterFeil(String repeterFeil) {
		this.repeterFeil = repeterFeil;
	}
}
