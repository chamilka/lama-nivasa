<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.add.title"/></td>
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
        <td class="tdLabel"><s:text name="page.add.children.home"/></td>
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
        <td class="tdLabel"><s:text name="page.add.child.code"/></td>
        <td>
     		<table>
				<s:textfield name="child.code" cssStyle="width:120px"/>
			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel"><s:text name="page.add.full.name"/></td>
        <td>
     		<table>
     			<s:textfield name="child.fullName" cssStyle="width:450px"/>
     			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel"><s:text name="page.add.category"/></td>
        <td>
     		<table>
     			<s:select name="child.category" list="childCategoryList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel"><s:text name="page.add.availabitity.parents"/></td>
        <td>
     		<table>
     			<s:select name="child.parentsAvailability" list="parentAvailabilityList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel"><s:text name="page.list.dob"/></td>
        <td>
     		<table>
     			<sj:datepicker
     				id="dateOfBirth"
     				name="child.dateOfBirth"
     				changeMonth="true"
     				changeYear="true"
     				yearRange="1994:"
     				value="%{child.dateOfBirth.time}"
     				/>
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel"><s:text name="page.list.gender"/></td>
        <td>
     		<table>
     			<s:select name="child.sexType" list="genderTypeList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel"><s:text name="page.add.race"/></td>
        <td>
     		<table>
     			<s:select name="child.race" list="raceList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel"><s:text name="page.add.religion"/></td>
        <td>
     		<table>
     			<s:select name="child.religion" list="religionList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel"><s:text name="page.add.birth.certificate"/></td>
        <td>
     		<table>
     			<s:select name="child.birthCertificate" list="hasDoNotHaveProcessingList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel"><s:text name="page.add.proforma"/></td>
        <td>
     		<table>
     			<s:select name="child.proforma" list="hasDoNotHaveProcessingList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel"><s:text name="page.add.vacc.card"/></td>
        <td>
     		<table>
     			<s:select name="child.vaccinationCard" list="hasDoNotHaveProcessingList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
       <tr>
        <td class="tdLabel"><s:text name="page.add.date.of.addmission"/></td>
        <td>
     		<table>
     			<sj:datepicker
     				name="child.dateOfRegistration"
     				changeMonth="true"
     				changeYear="true"
     				yearRange="1994:"
     				value="%{child.dateOfRegistration.time}"
     				/>
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel"><s:text name="page.add.disable"/></td>
        <td>
     		<table>
     			<s:select name="child.disable" list="yesNoList" listKey="listKey" listValue="listValue" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel"><s:text name="page.add.type.disability"/></td>
        <td>
     		<table>
     			<s:textfield name="child.typeOfDisability" cssStyle="width:300px" />
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel"><s:text name="page.add.school"/></td>
        <td>
     		<table>
     			<s:textfield name="child.school" cssStyle="width:450px" />
     		</table>
    	</td>
       </tr>
       <tr>
       <td class="tdLabel"><s:text name="page.add.grade"/></td>
        <td>
     		<table>
     			<s:textfield name="child.grade" cssStyle="width:50px"/>
     		</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel"><s:text name="page.add.intake"/></td>
        <td>
     		<table>
				<s:select name="child.intakeMethod" list="intakeMethodList" listKey="listKey" listValue="listValue" />
			</table>
    	</td>
      </tr>
      <tr>
        <td class="tdLabel"><s:text name="page.add.prob.unit"/></td>
        <td>
     		<table>
				<s:textfield name="child.originalProbationUnit" cssStyle="width:250px"/>
			</table>
    	</td>
      </tr>
      <tr>
      <td class="tdLabel"><s:text name="page.add.comment"/></td>
        <td>
     		<table>
				<s:textarea name="child.comment" cssStyle="width:500px;height:60px"/>
			</table>
    	</td>
      </tr>
      <td class="tdLabel"><s:text name="page.add.history"/></td>
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
				<sj:submit value = "%{getText('page.add.button')}" targets="childResultDiv"/>
			</table>
    	</td>
      </tr>
    </table>
  </s:form>
</div>

