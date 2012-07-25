package pdn.sci.cs.entity;

import java.util.Calendar;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "generic_category")
@GenericGenerator(name = "uuid-strategy", strategy = "uuid.hex")
public class GenericCategory extends BaseEntity implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	private String category;
	
	@Id
	@Column(name = "ID", unique = true, nullable = false, length = 32)
	@GeneratedValue(generator = "uuid-strategy")
	public String getId() {
		return this.id;
	}
	
	public void setId(String id) {
		this.id = id;
	}

	private Set<GenericList> genericLists = new HashSet<GenericList>(0);

	public GenericCategory() {
	}

	public GenericCategory(String id) {
		this.id = id;
	}

	public GenericCategory(String id, String category) {
		this.id = id;
		this.category = category;
	}

	public GenericCategory(String id, String category, Integer sortOrder,
			String insertUserId, String updateUserId, Calendar insertDatetime,
			Calendar updateDatetime, Set<GenericList> genericLists) {
		this.id = id;
		this.category = category;
		this.sortOrder = sortOrder;
		this.insertUserId = insertUserId;
		this.updateUserId = updateUserId;
		this.insertDateTime = insertDatetime;
		this.updateDateTime = updateDatetime;
		this.genericLists = genericLists;
	}

	@Column(name = "CATEGORY", nullable = false)
	public String getCategory() {
		return this.category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "genericCategory")
	@Cascade({org.hibernate.annotations.CascadeType.ALL})
	public Set<GenericList> getGenericLists() {
		return this.genericLists;
	}

	public void setGenericLists(Set<GenericList> genericLists) {
		this.genericLists = genericLists;
	}

}
