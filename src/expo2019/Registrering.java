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
	
	private StandEAO StandEAO;
	
	public Registrering(HttpServletRequest request, StandEAO StandEAO) {
		this.passord = (String) request.getParameter("passord");
		this.tlf = (String) request.getParameter("tlf");
		this.repeterPassord = (String) request.getParameter("repeterPassord");
	}
	
	public boolean erAlleFeltGyldig() {
		return (erTlfGyldig(this.tlf)) && (erPassordGyldig(this.passord)) && (erRepeterGyldig(this.repeterPassord));
	}
	
	public boolean erTlfGyldig(String tlf) {
		try {
			int nr = Integer.parseInt(tlf);
			return(10000000 <= nr) && (nr <= 99999999);
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
		StandEAO.leggTilBruker(user);
		return user;
	}
	
	public void genererFeilmelding() {
		if(!erPassordGyldig(passord)) {
			this.passord = "";
			this.passordFeil = "Ugyldig Passord. Passordet m� v�re minst 4 karakterer langt.";
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
