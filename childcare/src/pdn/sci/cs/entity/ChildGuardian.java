package pdn.sci.cs.entity;

import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "child_guardian")
@GenericGenerator(name = "uuid-strategy", strategy = "uuid.hex")
public class ChildGuardian extends BaseEntity implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Child child;
	private String name;
	private String address;
	private String telephone;
	private String relationship;
	private String pathToHome;

	public ChildGuardian() {
	}

	public ChildGuardian(String id, Child child, String name) {
		this.id = id;
		this.child = child;
		this.name = name;
	}

	public ChildGuardian(String id, Child child, String name, String address,
			String telephone, String relationship, String pathToHome,
			Integer sortOrder, String insertUserId, String updateUserId,
			Calendar insertDatetime, Calendar updateDatetime) {
		this.id = id;
		this.child = child;
		this.name = name;
		this.address = address;
		this.telephone = telephone;
		this.relationship = relationship;
		this.pathToHome = pathToHome;
		this.sortOrder = sortOrder;
		this.insertUserId = insertUserId;
		this.updateUserId = updateUserId;
		this.insertDateTime = insertDatetime;
		this.updateDateTime = updateDatetime;
	}

	@Id
	@Column(name = "ID", unique = true, nullable = false, length = 32)
	@GeneratedValue(generator = "uuid-strategy")
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "CHILD_ID", nullable = false)
	public Child getChild() {
		return this.child;
	}

	public void setChild(Child child) {
		this.child = child;
	}

	@Column(name = "NAME", nullable = false, length = 128)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "ADDRESS")
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "TELEPHONE", length = 32)
	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	@Column(name = "RELATIONSHIP", length = 32)
	public String getRelationship() {
		return this.relationship;
	}

	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}

	@Column(name = "PATH_TO_HOME")
	public String getPathToHome() {
		return this.pathToHome;
	}

	public void setPathToHome(String pathToHome) {
		this.pathToHome = pathToHome;
	}

}
