<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%@ taglib prefix="sjr" uri="/struts-jquery-richtext-tags"%>

<div>
	  <table>
	   <tr>
	   		<td class="td2" style="width:10px">&nbsp;</td><td>Events</td>
	   </tr>
	  </table>
</div>

<hr />

<s:if test="%{#session.USER_TYPE != 'ADMIN'}">
Add an event
<div>

    <table>
      <tr>
        <td class="tdLabel">Event Date</td>
        <td> 
     		<table>
     			<sj:datepicker 
     				id="date1" 
     				name="date1" 
     				label="Event Date" 
     				changeMonth="true" 
     				changeYear="true"
     				required="true"
     				displayFormat="yy/mm/dd"/>
     			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Event Description</td>
        <td> 
     		<table>
				<sjr:tinymce name="question.question"
					cssStyle="width:480px;height:200px"
					toolbarButtonsRow2="undo,redo,|,forecolor,backcolor"
					/>
			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Permission</td>
        <td> 
     		<table>
				<s:select name="permission"  list="#{'Own':'Own', 'Everyone':'Everyone'}" required="true"/>
			</table>
    	</td>
      </tr>
    </table>
</div>

<br /><br />

</s:if>
<div>
 Last 10 Events
 <hr />
 
 There is no event inserted yet
</div>