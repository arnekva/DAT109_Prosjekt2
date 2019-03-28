package expo2019;

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * @author Gruppe 7
 *	Composite Key for delt primærnøkkel, slik at en bruker kan gi rating til flere unike stands
 */
@Embeddable
public class CompositeKey {
	
	
	@Column(name = "bruker")
	private int user;
	@Column(name = "stand")
	private int stand;
}