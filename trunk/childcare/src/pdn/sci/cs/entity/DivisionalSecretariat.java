package pdn.sci.cs.entity;

import java.util.Calendar;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "divisional_secretariat")
public class DivisionalSecretariat extends BaseEntity implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private District district;
	private String id_widget;
	private String name;
	private Set<GramaSevakaDivision> gramaSevakaDivisions = new HashSet<GramaSevakaDivision>(0);

	public DivisionalSecretariat() {
	}

	public DivisionalSecretariat(String id, District district,
			String name) {
		this.id = id;
		this.district = district;
		this.name = name;
	}

	public DivisionalSecretariat(String id, District district,
			String name, Integer sortOrder, String insertUserId,
			String updateUserId, Calendar insertDatetime, Calendar updateDatetime,
			Set<GramaSevakaDivision> gramaSevakaDivisions) {
		this.id = id;
		this.district = district;
		this.name = name;
		this.sortOrder = sortOrder;
		this.insertUserId = insertUserId;
		this.updateUserId = updateUserId;
		this.insertDateTime = insertDatetime;
		this.updateDateTime = updateDatetime;
		this.gramaSevakaDivisions = gramaSevakaDivisions;
	}

	@Id
	@Column(name = "ID", unique = true, nullable = false, length = 32)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "DISTRICT_ID", nullable = false)
	public District getDistrict() {
		return this.district;
	}

	public void setDistrict(District district) {
		this.district = district;
	}

	@Column(name = "NAME", nullable = false)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "divisionalSecretariat")
	public Set<GramaSevakaDivision> getGramaSevakaDivisions() {
		return this.gramaSevakaDivisions;
	}

	public void setGramaSevakaDivisions(Set<GramaSevakaDivision> gramaSevakaDivisions) {
		this.gramaSevakaDivisions = gramaSevakaDivisions;
	}

	@Transient
	public String getId_widget() {
		return id;
	}

	public void setId_widget(String id_widget) {
		this.id = id_widget;
	}

}
