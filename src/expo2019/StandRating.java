package expo2019;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@IdClass(CompositeKey.class)
@Table(name = "StandRating", schema = "expo2019")
public class StandRating {

	@Id
	@ManyToOne
	@JoinColumn(name = "tlfnr", referencedColumnName = "tlfnr")
	private User user;
	
	@Id
	@ManyToOne
	@JoinColumn(name = "standid", referencedColumnName = "standid")
	private Stand stand;
	
	
	private double rating;
	
	public StandRating() {}


	public StandRating(User user, Stand stand, double rating) {
		this.user = user;
		this.stand = stand;
		this.rating = rating;
	}
	

	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public Stand getStand() {
		return stand;
	}


	public void setStand(Stand stand) {
		this.stand = stand;
	}


	public double getRating() {
		return rating;
	}


	public void setRating(double rating) {
		this.rating = rating;
	}
	
	


}