package pdn.sci.cs.entity;

import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.transaction.annotation.Transactional;

@Entity
@Table(name = "grama_sevaka_division")
public class GramaSevakaDivision extends BaseEntity implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	//private GramaSevaka gramaSevaka;
	public static final String DIVISIONAL_SECRETARIAT_ID = "divisionalSecretariat.id";
	private DivisionalSecretariat divisionalSecretariat;
	private String name;
	private String code;

	public GramaSevakaDivision() {
	}

	public GramaSevakaDivision(String id, GramaSevaka gramaSevaka,
			DivisionalSecretariat devisionalSecretariat, String name) {
		this.id = id;
		//this.gramaSevaka = gramaSevaka;
		this.divisionalSecretariat = devisionalSecretariat;
		this.name = name;
	}

	public GramaSevakaDivision(String id, GramaSevaka gramaSevaka,
			DivisionalSecretariat devisionalSecretariat, String name,
			Integer sortOrder, String insertUserId, String updateUserId,
			Calendar insertDatetime, Calendar updateDatetime) {
		this.id = id;
		//this.gramaSevaka = gramaSevaka;
		this.divisionalSecretariat = devisionalSecretariat;
		this.name = name;
		this.sortOrder = sortOrder;
		this.insertUserId = insertUserId;
		this.updateUserId = updateUserId;
		this.insertDateTime = insertDatetime;
		this.updateDateTime = updateDatetime;

	}

	@Id
	@Column(name = "ID", unique = true, nullable = false, length = 32)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	//@ManyToOne(fetch = FetchType.LAZY)
	//@JoinColumn(name = "GRAMA_SEVAKA_ID", nullable = false)
	/*@Transactional
	public GramaSevaka getGramaSevaka() {
		return this.gramaSevaka;
	}

	public void setGramaSevaka(GramaSevaka gramaSevaka) {
		this.gramaSevaka = gramaSevaka;
	}*/

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "DIVISIONAL_SECRETARIAT_ID", nullable = false)
	public DivisionalSecretariat getDivisionalSecretariat() {
		return this.divisionalSecretariat;
	}

	public void setDivisionalSecretariat(
			DivisionalSecretariat divisionalSecretariat) {
		this.divisionalSecretariat = divisionalSecretariat;
	}

	@Column(name = "NAME", nullable = false)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "CODE", nullable = true)
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	

}
