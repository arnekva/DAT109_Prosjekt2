package expo2019;

import java.util.Collections;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "stand", schema = "expo2019")
public class Stand implements Comparable<Stand>{

	@Id
	private int standid;

	private String tittel;
	private String beskrivelse;
	private String gruppenavn;
	private String lokasjon;
	private String bildeurl;
	private String qrUrl;
	private double kalkulertscore;

	public Stand() {

	}

	public Stand(int id, String tittel, String beskrivelse, String gruppenavn, String lokasjon, String bildeurl,
			String qrUrl) {
		super();
		this.standid = id;
		this.tittel = tittel;
		this.beskrivelse = beskrivelse;
		this.gruppenavn = gruppenavn;
		this.lokasjon = lokasjon;
		this.bildeurl = bildeurl;
		this.qrUrl = qrUrl;
	}

	public int getStandid() {
		return standid;
	}

	public void setStandid(int standid) {
		this.standid = standid;
	}

	public String getGruppenavn() {
		return gruppenavn;
	}

	public void setGruppenavn(String gruppenavn) {
		this.gruppenavn = gruppenavn;
	}

	public double getKalkulertscore() {
		return kalkulertscore;
	}

	public void setKalkulertscore(double kalkulertscore) {
		this.kalkulertscore = kalkulertscore;
	}

	public String getTittel() {
		return tittel;
	}

	public void setTittel(String tittel) {
		this.tittel = tittel;
	}

	public String getBeskrivelse() {
		return beskrivelse;
	}

	public void setBeskrivelse(String beskrivelse) {
		this.beskrivelse = beskrivelse;
	}

	public String getLokasjon() {
		return lokasjon;
	}

	public void setLokasjon(String lokasjon) {
		this.lokasjon = lokasjon;
	}

	public String getBildeurl() {
		return bildeurl;
	}

	public void setBildeurl(String bildeurl) {
		this.bildeurl = bildeurl;
	}

	public String getQrUrl() {
		return qrUrl;
	}

	public void setQrUrl(String qrUrl) {
		this.qrUrl = qrUrl;
	}
	@Override
	public int compareTo(Stand s) {
	  if(this.kalkulertscore < s.kalkulertscore) {
	    return 1;
	  }else if (this.kalkulertscore > s.kalkulertscore){
	    return -1;
	  }else {
	    return 0;
	  }
	}
	public static void sorter(List<Stand> stands) {
	  Collections.sort(stands);
	}

}
