<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td2" style="width:10px">&nbsp;</td><td>View Activity</td>
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
				<s:label name="activity.activityType" />
			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Category</td>
        <td> 
     		<table>
				<s:label name="activity.activityCategory" />
			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Title</td>
        <td> 
     		<table>
     			<s:label name="activity.title" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Target Group</td>
        <td> 
     		<table>
     			<s:label name="activity.targetGroup" />
     			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Location</td>
        <td> 
     		<table>
     			<s:label name="activity.location" cssStyle="width:300px"/>
     			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Start Date</td>
        <td> <s:date name="activity.activityStartDate.time" format="yyyy/MM/dd" /> 	</td>
      </tr>
      <tr>
        <td class="tdLabel">End Date</td>
        <td> <s:date name="activity.activityEndDate.time" format="yyyy/MM/dd" />  	</td>
      </tr>
      <tr>
        <td class="tdLabel">Start Time</td>
        <td> 
     		<table>
     			<s:label name="activity.startTime" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">End Time</td>
        <td> 
     		<table><s:label name="activity.endTime" /></table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Maximum Participants</td>
        <td> 
     		<table>
     			<s:label name="activity.maximumParticipants"	/>
     		</table>
    	</td>
       </tr>
       <tr>
        <td class="tdLabel">Organize By</td>
        <td> 
     		<table>
     			<s:label name="activity.organizedBy"/>
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Description</td>
        <td> 
     		<table>
				<s:label name="activity.description"	/>
			</table>
    	</td>
      </tr>
      
    </table>
</div>

	