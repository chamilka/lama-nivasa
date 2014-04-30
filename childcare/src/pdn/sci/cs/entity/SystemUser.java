package pdn.sci.cs.entity;

import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "system_user", uniqueConstraints = @UniqueConstraint(columnNames = "USERNAME"))
@GenericGenerator(name = "uuid-strategy", strategy = "uuid.hex")
public class SystemUser extends BaseEntity implements java.io.Serializable {

	public enum USER_ROLE  { ADMIN, USER, OFFICER, SPONSOR, MINISTRY }
	public static final String USERNAME = "username";
	public static final String USERPASSWORD = "userPassword";
	public static final String EMAIL = "email";
	public static final String NAME = "name";
	public static final String SYSTEM_USER_ROLE = "userRole";
	public static final String MOBILE = "mobile";
	public static final String REFERENCE_ID = "referenceId";
	
	private static final long serialVersionUID = 1L;
	protected String id;
	private String username;
	private String name;
	private String userRole;
	private String post;
	private String referenceId;
	private String userPassword;
	private String email;
	private String telephone;
	private String mobile;
	private String addressTemporary;
	private String address;
	private String sex;

	@Id
	@Column(name = "ID", unique = true, nullable = false, length = 32)
	@GeneratedValue(generator = "uuid-strategy")
	public String getId() {
		return this.id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public SystemUser() {
	}

	public SystemUser(String id, String username, String userPassword) {
		this.id = id;
		this.username = username;
		this.userPassword = userPassword;
	}

	public SystemUser(String id, String username, String userPassword,
			String email, String telephone, String mobile,
			String addressTemporary, String address, String sex,
			Integer sortOrder, String insertUserId, String updateUserId,
			Calendar insertDatetime, Calendar updateDatetime) {
		this.id = id;
		this.username = username;
		this.userPassword = userPassword;
		this.email = email;
		this.telephone = telephone;
		this.mobile = mobile;
		this.addressTemporary = addressTemporary;
		this.address = address;
		this.sex = sex;
		this.sortOrder = sortOrder;
		this.insertUserId = insertUserId;
		this.updateUserId = updateUserId;
		this.insertDateTime = insertDatetime;
		this.updateDateTime = updateDatetime;
	}

	@Column(name = "NAME")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "REFERENCE_ID", length = 32)
	public String getReferenceId() {
		return referenceId;
	}

	public void setReferenceId(String referenceId) {
		this.referenceId = referenceId;
	}

	@Column(name = "USERNAME", unique = true, nullable = false, length = 32)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "USER_PASSWORD", nullable = false, length = 32)
	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
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

	@Column(name = "MOBILE", length = 16)
	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	@Column(name = "ADDRESS_TEMPORARY")
	public String getAddressTemporary() {
		return this.addressTemporary;
	}

	public void setAddressTemporary(String addressTemporary) {
		this.addressTemporary = addressTemporary;
	}

	@Column(name = "ADDRESS")
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "SEX", length = 8)
	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
	
	@Column(name = "USER_ROLE", length = 8)
	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	@Column(name = "POST", length = 64)
	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

}
