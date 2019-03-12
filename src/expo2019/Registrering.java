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
	
	public Registrering(HttpServletRequest request) {
		this.passord = (String) request.getParameter("passord");
		this.tlf = (String) request.getParameter("tlf");
		this.repeterPassord = (String) request.getParameter("repeterPassord");
		this.passordFeil = "";
		this.tlfFeil = "";
		this.repeterFeil = "";
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
		User user = new User(tlf2, this.passord);
		
		return user;
	}
	
	public void genererFeilmelding() {
		if(!erPassordGyldig(passord)) {
			this.passord = "";
			this.repeterPassord = "";
			this.passordFeil = "Ugyldig Passord. Passordet må være minst 4 karakterer langt.";
		}
		if(!erRepeterGyldig(repeterPassord)) {
			this.passord = "";
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
}
