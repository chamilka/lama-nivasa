<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%@ taglib prefix="sjr" uri="/struts-jquery-richtext-tags"%>

<div>
	  <table>
	   <tr>
	   		<td class="td2" style="width:10px">&nbsp;</td><td>Activity</td>
	   </tr>
	  </table>
</div>

<hr />

<div>

    <table>
      <tr>
        <td class="tdLabel">Activity Type</td>
        <td> 
     		<table>
				<s:select name="activity.activityType"  list="activityTypeList" listKey="listKey" listValue="listValue" required="true"/>
			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Category</td>
        <td> 
     		<table>
				<s:select name="activity.activityCategory"  list="activityCategoryList" listKey="listKey" listValue="listValue" required="true"/>
			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Title</td>
        <td> 
     		<table>
     			<s:textfield name="activity.title" cssStyle="width:200px"/>
     			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Target Group</td>
        <td> 
     		<table>
     			<s:textfield name="activity.targetGroup" cssStyle="width:300px"/>
     			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Location</td>
        <td> 
     		<table>
     			<s:textfield name="activity.location" cssStyle="width:300px"/>
     			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Start Date</td>
        <td> 
     		<table>
     			<sj:datepicker 
     				id="activityStartDate" 
     				name="activity.activityStartDate" 
     				label="Activity Start Date" 
     				changeMonth="true" 
     				changeYear="true"
     				required="true"
     				displayFormat="yy/mm/dd"/>
     			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">End Date</td>
        <td> 
     		<table>
     			<sj:datepicker 
     				id="activityEndDate" 
     				name="activity.activityEndDate" 
     				label="Activity End Date" 
     				changeMonth="true" 
     				changeYear="true"
     				required="true"
     				displayFormat="yy/mm/dd"/>
     			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Start Time</td>
        <td> 
     		<table>
     			<s:textfield name="activity.startTime" cssStyle="width:100px"/>
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">End Time</td>
        <td> 
     		<table>
     			<s:textfield name="activity.endTime" cssStyle="width:100px"/>
     			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Maximum Participants</td>
        <td> 
     		<table>
     			<sj:spinner 
			    	name="activity.maximumParticipants" 
			    	id="ratingSpinner" 
			    	min="0" 
			    	max="100" 
			    	step="1" 
			    	label="Rating"
			    	cssStyle="width:60px"
			    	required="true"
			    	mouseWheel="true"
			    	tooltip="Range [0, 100]"/>
     		</table>
    	</td>
       </tr>
       <tr>
        <td class="tdLabel">Organize By</td>
        <td> 
     		<table>
     			<s:textfield name="activity.organizedBy" cssStyle="width:300px"/>
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Description</td>
        <td> 
     		<table>
				<sjr:tinymce name="activity.description"
					cssStyle="width:480px;height:200px"
					toolbarButtonsRow2="undo,redo,|,forecolor,backcolor"
					/>
			</table>
    	</td>
      </tr>
      
      <tr>
        <td class="tdLabel">&nbsp;</td>
        <td> 
     		<table>
				<sj:submit />
			</table>
    	</td>
      </tr>
    </table>
</div>
