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

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "probation_unit")
@GenericGenerator(name = "uuid-strategy", strategy = "uuid.hex")
public class ProbationUnit extends BaseEntity implements java.io.Serializable {

	public static final String NAME = "name";
	private static final long serialVersionUID = 1L;
	private String name;
	private String email;
	private String telephone;
	private String fax;
	private String address;
	private String comment;

	//private Set<SystemUser> systemUsers = new HashSet<SystemUser>(0);
	private Set<LamaNivasa> lamaNivasas = new HashSet<LamaNivasa>(0);

	public ProbationUnit() {
	}

	public ProbationUnit(String id, String name) {
		this.id = id;
		this.name = name;
	}

	public ProbationUnit(String id, String name, String email,
			String telephone, String address, Integer sortOrder,
			String insertUserId, String updateUserId, Calendar insertDatetime,
			Calendar updateDatetime, /*Set<SystemUser> systemUsers, */ Set<LamaNivasa> lamaNivasas) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.telephone = telephone;
		this.address = address;
		this.sortOrder = sortOrder;
		this.insertUserId = insertUserId;
		this.updateUserId = updateUserId;
		this.insertDateTime = insertDatetime;
		this.updateDateTime = updateDatetime;
		//this.systemUsers = systemUsers;
		this.lamaNivasas = lamaNivasas;
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

	@Column(name = "NAME", nullable = false, length = 32)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "EMAIL", length = 64)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "TELEPHONE", length = 16)
	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	@Column(name = "ADDRESS")
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	/*@OneToMany(fetch = FetchType.LAZY, mappedBy = "probationUnit")
	public Set<SystemUser> getSystemUsers() {
		return this.systemUsers;
	}

	public void setSystemUsers(Set<SystemUser> systemUsers) {
		this.systemUsers = systemUsers;
	}*/

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "probationUnit")
	public Set<LamaNivasa> getLamaNivasas() {
		return this.lamaNivasas;
	}

	public void setLamaNivasas(Set<LamaNivasa> lamaNivasas) {
		this.lamaNivasas = lamaNivasas;
	}

	@Column(name = "COMMENT")
	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	@Column(name = "FAX")
	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

}
