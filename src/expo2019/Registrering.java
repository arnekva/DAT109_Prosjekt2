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
	
	public boolean erAlleFeltGyldig() {
		return (erTlfGyldig(this.tlf)) && erTlfLedig(this.tlf) && (erPassordGyldig(this.passord)) && (erRepeterGyldig(this.repeterPassord));
	}
	
	public boolean erTlfLedig(String tlf) {
		if (erTlfGyldig(tlf)) {
			try {
				int nr = Integer.parseInt(tlf);
				User eksistenssjekk = standEAO.hentBrukerPaaPK(nr);
				return false;
			} catch (Exception e) {
				return true;
			}
		}
		return false;
	}
	
	public boolean erTlfGyldig(String tlf) {
		try {
			int nr = Integer.parseInt(tlf);
			return((90000000 <= nr) && (nr <= 99999999) || (40000000 <= nr) && (nr <= 49999999));
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean erPassordGyldig(String passord) {
		return passord.matches(tillatpassord) && passord != null && passord.length() > 4;
	}
	
	public boolean erRepeterGyldig(String repeterPassord) {
		return erPassordGyldig(this.passord) && repeterPassord.equals(this.passord);
	}
	
	public User newUser() {
		int tlf2 = Integer.parseInt(this.tlf);
		String passordKryptert = PassordUtil.krypterPassord(this.passord);
		User user = new User(tlf2, passordKryptert);
		standEAO.leggTilBruker(user);
		return user;
	}
	
	public void genererFeilmelding() {
		if(!erPassordGyldig(passord)) {
			this.passord = "";
			this.passordFeil = "Ugyldig Passord. Passordet må være minst 4 karakterer langt.";
		}
		if(!erRepeterGyldig(repeterPassord)) {
			this.repeterPassord = "";
			this.repeterFeil = "Passordene matcher ikke.";
		}
		if(!erTlfLedig(tlf)) {
			this.tlf = "";
			this.tlfFeil = "Nummeret er allerede registrert. Vennligst logg inn.";
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
