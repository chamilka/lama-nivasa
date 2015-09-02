<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td1" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.transfer.list.title"/></td>
	   </tr>
	  </table>
	</div>
	<hr />

	<div>
	  <s:if test="list.size > 0">
	  <table style="margin-top: 10px" width="100%" id="commonTable" class="blueTbl">
	  	<tr>
	  		<th><s:text name="page.transfer.list.transferDate"/></th>
	  		<th><s:text name="page.transfer.add.fromLamaNivasaId"/></th>
	  		<th><s:text name="page.transfer.add.toLamaNivasaId"/></th>
	  		<th><s:text name="page.transfer.list.reason"/></th>
	  	</tr>
			<s:iterator value="list" status="rowIndex">
				<tr>
				 <td>
				 	<s:if test="transferDate == null">
						<div style="color: red;">Still not accepted</div>
					</s:if>
					<s:else>
						<s:date name="transferDate" format="yyyy/MM/dd" />
						
					</s:else>
				 </td>
				 <td><s:property value="fromLamaNivasaId.name" /> </td>
				 <td><s:property value="toLamaNivasaId.name" /> </td>
				 <td><s:property value="reason" /> </td>
			</s:iterator>
		</table>
	  </s:if>
	  <s:else>
	  	<s:text name="page.transfer.list.msg"/>
	  </s:else>
	</div>

