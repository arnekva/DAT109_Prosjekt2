package expo2019;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "bruker", schema = "expo2019")
public class User {

    @Id
    private int tlfnr;
    
    private String passord;
    

    public User() {
    	
    }
    
    public User(int tlfnr, String passord) {
    	this.tlfnr = tlfnr;
    	this.passord = passord;
    }

	public int getTlfnr() {
		return tlfnr;
	}

	public void setTlfnr(int tlfnr) {
		this.tlfnr = tlfnr;
	}
    
    
}
