<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td class="sub-title">Add/Edit Child</td>
	   </tr>
	  </table>
</div>

<hr />

<div>
  <s:form action="save" method="post" namespace="/child" theme="xhtml">
    <s:actionerror/>
	<s:hidden name="child.id" />
	<s:hidden name="operationMode"/>

    <table class="darkBlueTbl" width="100%" >
      <tr>
        <td class="tdLabel">Chidren's Home</td>
        <td>
     		<table>

     		   <sj:autocompleter
			  		id="child.lamaNivasa.id"
		     		name="child.lamaNivasa.id"
		     		list="%{lamaNivasaList}"
		     		listKey="id" listValue="name"
		     		cssStyle="width:350px"
     			/>
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Child's Code</td>
        <td>
     		<table>
				<s:textfield name="child.code" cssStyle="width:120px"/>
			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Full Name</td>
        <td>
     		<table>
     			<s:textfield name="child.fullName" cssStyle="width:450px"/>
     			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Category</td>
        <td>
     		<table>
     			<s:select name="child.category" list="childCategoryList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Parent Availability</td>
        <td>
     		<table>
     			<s:select name="child.parentsAvailability" list="parentAvailabilityList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Date Of Birth</td>
        <td>
     		<table>
     			<sj:datepicker
     				id="dateOfBirth"
     				name="child.dateOfBirth"
     				changeMonth="true"
     				changeYear="true"
     				yearRange="1994:2012"
     				value="%{child.dateOfBirth.time}"
     				/>
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Gender</td>
        <td>
     		<table>
     			<s:select name="child.sexType" list="genderTypeList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Race</td>
        <td>
     		<table>
     			<s:select name="child.race" list="raceList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Religion</td>
        <td>
     		<table>
     			<s:select name="child.religion" list="religionList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Birth Certificate</td>
        <td>
     		<table>
     			<s:select name="child.birthCertificate" list="hasDoNotHaveProcessingList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Proforma</td>
        <td>
     		<table>
     			<s:select name="child.proforma" list="hasDoNotHaveProcessingList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Vaccination Card</td>
        <td>
     		<table>
     			<s:select name="child.vaccinationCard" list="hasDoNotHaveProcessingList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
       <tr>
        <td class="tdLabel">Date Of Admission</td>
        <td>
     		<table>
     			<sj:datepicker
     				name="child.dateOfRegistration"
     				changeMonth="true"
     				changeYear="true"
     				yearRange="1994:2012"
     				value="%{child.dateOfRegistration.time}"
     				/>
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Disable</td>
        <td>
     		<table>
     			<s:select name="child.disable" list="yesNoList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Type of Disability</td>
        <td>
     		<table>
     			<s:textfield name="child.typeOfDisability" cssStyle="width:300px" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">School</td>
        <td>
     		<table>
     			<s:textfield name="child.school" cssStyle="width:450px" />
     		</table>
    	</td>
       </tr>
       <tr>
       <td class="tdLabel">Grade</td>
        <td>
     		<table>
     			<s:textfield name="child.grade" cssStyle="width:50px"/>
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">Intake Method</td>
        <td>
     		<table>
				<s:select name="child.intakeMethod" list="intakeMethodList" listKey="listKey" listValue="listValue" />
			</table>
    	</td>
      </tr>
      <tr>
      <td class="tdLabel">Comment</td>
        <td>
     		<table>
				<s:textarea name="child.comment" cssStyle="width:500px;height:60px"/>
			</table>
    	</td>
      </tr>
      <td class="tdLabel">History</td>
        <td>
     		<table>
				<s:textarea name="child.history" cssStyle="width:500px;height:60px"/>
			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel">&nbsp;</td>
        <td>
     		<table>
				<sj:submit targets="childResultDiv"/>
			</table>
    	</td>
      </tr>
    </table>
  </s:form>
</div>

