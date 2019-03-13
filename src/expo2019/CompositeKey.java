package expo2019;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class CompositeKey {
	
	@Column(name = "bruker")
	private int bruker;
	@Column(name = "stand")
	private int stand;
}