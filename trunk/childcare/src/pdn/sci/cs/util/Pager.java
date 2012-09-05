package pdn.sci.cs.util;

import java.util.List;
import java.util.Map;

import pdn.sci.cs.entity.BaseEntity;

public class Pager {

	public static final int DEFAULT_PAGE_SIZE = 20;
	private Integer start = 0; //default
	private Integer size = DEFAULT_PAGE_SIZE; //default
	private Integer total;
	private List<? extends BaseEntity> list;
	private String actionName;
	private String namespace;
	private String targetDiv;
	private Map<String, Object> parameters;
	
	public Pager() {
		super();
	}

	public Pager(int start, int size, int total, List<? extends BaseEntity> list) {
		super();
		this.start = start;
		this.size = size;
		this.total = total;
		this.list = list;
	}

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public List<? extends BaseEntity> getList() {
		return list;
	}

	public void setList(List<? extends BaseEntity> list) {
		this.list = list;
	}
	
	public String getActionName() {
		return actionName;
	}

	public void setActionName(String actionName) {
		this.actionName = actionName;
	}

	public String getNamespace() {
		return namespace;
	}

	public void setNamespace(String namespace) {
		this.namespace = namespace;
	}

	public Map<String, Object> getParameters() {
		return parameters;
	}

	public void setParameters(Map<String, Object> parameters) {
		this.parameters = parameters;
	}
	
	public void setActionCallInfo(String name, String namespace, Map<String, Object> params ) {
		this.actionName = name;
		this.namespace = namespace;
		this.parameters = params;
	}
	
	public String getTargetDiv() {
		return targetDiv;
	}

	public void setTargetDiv(String targetDiv) {
		this.targetDiv = targetDiv;
	}

	@Override
	public String toString() {
		return "Pager [start=" + start + ", size=" + size + ", total=" + total
				+ ", list=" + list.size() + "]";
	}
	
	public boolean isFirstEnable () {
		return start >= size;
	}
	
	public boolean isLastEnable() {
		return total > (start + size);
	}
	
	public boolean isPreviousEnable () {
		return start >= size;
	}
	
	public boolean isNextEnable() {
		return total > (start + size);
	}

}
