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
@Table(name = "generic_list")
@GenericGenerator(name = "uuid-strategy", strategy = "uuid.hex")
public class GenericList extends BaseEntity implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	public static final String CATEGORY_ID = "genericCategory.id";
	public static final String CATEGORY_NAME = "genericCategory.category";
	
	private GenericCategory genericCategory;
	private String listKey;
	private String listValue;

	public GenericList() {
	}

	public GenericList(String id, GenericCategory genericCategory,
			String listValue) {
		this.id = id;
		this.genericCategory = genericCategory;
		this.listValue = listValue;
	}

	public GenericList(String id, GenericCategory genericCategory,
			String listValue, Integer sortOrder, String insertUserId,
			String updateUserId, Calendar insertDatetime, Calendar updateDatetime) {
		this.id = id;
		this.genericCategory = genericCategory;
		this.listValue = listValue;
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
	@JoinColumn(name = "GENERIC_CATEGORY_ID", nullable = false)
	public GenericCategory getGenericCategory() {
		return this.genericCategory;
	}

	public void setGenericCategory(GenericCategory genericCategory) {
		this.genericCategory = genericCategory;
	}

	@Column(name = "LIST_VALUE", nullable = false)
	public String getListValue() {
		return this.listValue;
	}

	public void setListValue(String listValue) {
		this.listValue = listValue;
	}

	@Column(name = "LIST_KEY", nullable = false)
	public String getListKey() {
		return listKey;
	}

	public void setListKey(String listKey) {
		this.listKey = listKey;
	}
	
	

}
