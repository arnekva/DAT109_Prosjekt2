package expo2019;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class CompositeKey {
	
	@Column(name = "bruker")
	private int user;
	@Column(name = "stand")
	private int stand;
}