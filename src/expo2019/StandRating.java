package expo2019;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@IdClass(CompositeKey.class)
@Table(name ="standscore", schema="expo2019")
public class StandRating {

	@Id
	@ManyToOne
	@JoinColumn(name = "tlfnr", referencedColumnName = "tlfnr", insertable=false)
	private int tlfnr;
	
	@Id
	@ManyToOne
	@JoinColumn(name = "standid", referencedColumnName = "standid", insertable=false)
	private int standid;
	
	
	private double rating;


	public StandRating(int tlfnr, int standid, double rating) {

		this.tlfnr = tlfnr;
		this.standid = standid;
		this.rating = rating;
	}


	public int getTlfnr() {
		return tlfnr;
	}


	public void setTlfnr(int tlfnr) {
		this.tlfnr = tlfnr;
	}


	public int getStandid() {
		return standid;
	}


	public void setStandid(int standid) {
		this.standid = standid;
	}


	public double getRating() {
		return rating;
	}


	public void setRating(double rating) {
		this.rating = rating;
	}
	
}
