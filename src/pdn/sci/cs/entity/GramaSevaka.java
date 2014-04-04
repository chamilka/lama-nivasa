package pdn.sci.cs.entity;

import java.util.Calendar;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "grama_sevaka")
public class GramaSevaka extends BaseEntity implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private String name;
	private Set<GramaSevakaDivision> gramaSevakaDivisions = new HashSet<GramaSevakaDivision>(0);

	public GramaSevaka() {
	}

	public GramaSevaka(String id, String name) {
		this.id = id;
		this.name = name;
	}

	public GramaSevaka(String id, String name, Integer sortOrder,
			String insertUserId, String updateUserId, Calendar insertDatetime,
			Calendar updateDatetime, Set<GramaSevakaDivision> gramaSevakaDevisions) {
		this.id = id;
		this.name = name;
		this.sortOrder = sortOrder;
		this.insertUserId = insertUserId;
		this.updateUserId = updateUserId;
		this.insertDateTime = insertDatetime;
		this.updateDateTime = updateDatetime;
		this.gramaSevakaDivisions = gramaSevakaDevisions;
	}

	@Id
	@Column(name = "ID", unique = true, nullable = false, length = 32)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "NAME", nullable = false)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "gramaSevaka")
	public Set<GramaSevakaDivision> getGramaSevakaDivisions() {
		return this.gramaSevakaDivisions;
	}

	public void setGramaSevakaDivisions(Set<GramaSevakaDivision> gramaSevakaDivisions) {
		this.gramaSevakaDivisions = gramaSevakaDivisions;
	}

}
