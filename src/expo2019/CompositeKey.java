package expo2019;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class CompositeKey {
	
	@Column(name="tlfnr")
	private int tlfnr;
	@Column(name="standid")
	private int standid;
}