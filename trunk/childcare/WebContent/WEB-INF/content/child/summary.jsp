<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>

	<div>
	  <table style="width:100%">
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td class="sub-title">Summary</td>
	   		<td>&nbsp;</td>
	   			<td style="align:right; width:100px"> <a href="#"><img src='<s:url value="/images/ms-excel.png" />' style="width:48px;height:48px" title="Download MS-Excel" /></a></td>
	   </tr>
	  </table>
	</div>


	<div style="margin: 20px 0 0 20px;border: 1px dotted;">
	  <table>
		<tr>
	     <td>
	       <b>1. Total Count (<s:property value="childSummary.count.male + childSummary.count.female" /> )</b>
	     </td>
	    </tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.count.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.count.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>
	  </table>
	</div>

<div align="center">
	<div style="margin: 20px 0 0 10px; float: left;">
		<table class="darkBlueTbl">
        	<tr><th colspan="2">Age</th></tr>
        	<tr><td colspan="2"><b>1. Age less than 2 (<s:property value="childSummary.ageLessThanTwo.male + childSummary.ageLessThanTwo.female" /> )</b></td></tr>
		   	<tr>
			     <td style="padding-left: 25px">
			     	 <table>
			     	 	<s:label
					    	name="childSummary.ageLessThanTwo.male"
					    	label="Male"  />
			     	 </table>
			     </td>
			     <td>
			     	 <table>
			     	 	<s:label
					    	name="childSummary.ageLessThanTwo.female"
					    	label="Female"  />
			     	 </table>
			     </td>
		    </tr>

		    <tr><td colspan="2"><b>2. Age 2 to 5 (<s:property value="childSummary.ageLessThanFive.male + childSummary.ageLessThanFive.female" /> )</b></td></tr>
		   	<tr>
			     <td style="padding-left: 25px">
			     	 <table>
			     	 	<s:label
					    	name="childSummary.ageLessThanFive.male"
					    	label="Male"  />
			     	 </table>
			     </td>
			     <td>
			     	 <table>
			     	 	<s:label
					    	name="childSummary.ageLessThanFive.female"
					    	label="Female"  />
			     	 </table>
			     </td>
		    </tr>
		     <tr><td colspan="2"><b>3. Age 5 to 10 (<s:property value="childSummary.ageLessThanTen.male + childSummary.ageLessThanTen.female" /> )</b></td></tr>
		   	<tr>
			     <td style="padding-left: 25px">
			     	 <table>
			     	 	<s:label
					    	name="childSummary.ageLessThanTen.male"
					    	label="Male"  />
			     	 </table>
			     </td>
			     <td>
			     	 <table>
			     	 	<s:label
					    	name="childSummary.ageLessThanTen.female"
					    	label="Female"  />
			     	 </table>
			     </td>
		    </tr>
		    <tr><td colspan="2"><b>4. Age 10 to 18 (<s:property value="childSummary.ageLessThanEighteen.male + childSummary.ageLessThanEighteen.female" /> )</b></td></tr>
		   	<tr>
			     <td style="padding-left: 25px">
			     	 <table>
			     	 	<s:label
					    	name="childSummary.ageLessThanEighteen.male"
					    	label="Male"  />
			     	 </table>
			     </td>
			     <td>
			     	 <table>
			     	 	<s:label
					    	name="childSummary.ageLessThanEighteen.female"
					    	label="Female"  />
			     	 </table>
			     </td>
		    </tr>
         </table>
	</div>

	<div style="margin: 20px 0 0 10px; float: left;">
	  <table class="darkBlueTbl">
	  <tr>
	     <th class="td3" colspan="2">
	       Religion
	     </th>
	    </tr>
	    <tr>
	     <td colspan="2">
	       <b>5. Buddhist (<s:property value="childSummary.buddhist.male + childSummary.buddhist.female" /> )</b>
	     </td>
	    </tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.buddhist.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.buddhist.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	    <tr>
	     <td colspan="2">
	       <b>6. Roman Catholic (<s:property value="childSummary.romanCatholic.male + childSummary.romanCatholic.female" /> )</b>
	     </td>
	    </tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.romanCatholic.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.romanCatholic.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	    <tr><td colspan="2"><b>7. Christianity (<s:property value="childSummary.christianity.male + childSummary.christianity.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.christianity.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.christianity.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	    <tr><td colspan="2"><b>8. Hinduism (<s:property value="childSummary.hinduism.male + childSummary.hinduism.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.hinduism.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.hinduism.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	    <tr><td colspan="2"><b>9. Islam (<s:property value="childSummary.islam.male + childSummary.islam.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.islam.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.islam.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	    <tr><td colspan="2"><b>10. Other Religions (<s:property value="childSummary.religionOther.male + childSummary.religionOther.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.religionOther.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.religionOther.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>
      </table>
    </div>

    <div style="margin: 20px 0 0 10px;float: left;">
      <table class="darkBlueTbl">
        <tr><th colspan="2">Race</th></tr>
	    <tr><td colspan="2"><b>11. Sinhala (<s:property value="childSummary.sinhala.male + childSummary.sinhala.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.sinhala.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.sinhala.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	    <tr><td colspan="2"><b>12. Sri Lankan Tamil (<s:property value="childSummary.srilankanTamil.male + childSummary.srilankanTamil.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.srilankanTamil.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.srilankanTamil.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	    <tr><td colspan="2"><b>13. Indian Tamil (<s:property value="childSummary.indianTamil.male + childSummary.indianTamil.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.indianTamil.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.indianTamil.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	    <tr><td colspan="2"><b>14. Muslim (<s:property value="childSummary.muslim.male + childSummary.muslim.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.muslim.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.muslim.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	    <tr><td colspan="2"><b>15. Other Races (<s:property value="childSummary.raceOther.male + childSummary.raceOther.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.raceOther.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.raceOther.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>
	  </table>
	 </div>

	<div style="margin: 20px 0 0 10px;float: left; background-color: #f0f0f0">
	    <table class="darkBlueTbl">
        <tr><th colspan="2">Parents</th></tr>
	    <tr><td colspan="2"><b>16. Both Parents (<s:property value="childSummary.parentBoth.male + childSummary.parentBoth.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.parentBoth.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.parentBoth.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	    <tr><td colspan="2"><b>17. Mother Only (<s:property value="childSummary.parentMotherOnly.male + childSummary.parentMotherOnly.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.parentMotherOnly.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.parentMotherOnly.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	    <tr><td colspan="2"><b>18. Father Only (<s:property value="childSummary.parentFatherOnly.male + childSummary.parentFatherOnly.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.parentFatherOnly.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.parentFatherOnly.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	    <tr><td colspan="2"><b>19. No Parents (<s:property value="childSummary.parentNone.male + childSummary.parentNone.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.parentNone.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.parentNone.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>
	   </table>
     </div>


    <div style="margin: 20px 0 0 10px;float: left;">
       <table class="darkBlueTbl">
        <tr><th colspan="2">Intake</th></tr>
	    <tr><td colspan="2"><b>20. Courts (<s:property value="childSummary.intakeCourt.male + childSummary.intakeCourt.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.intakeCourt.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.intakeCourt.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	    <tr><td colspan="2"><b>21. Department (<s:property value="childSummary.intakeDepartment.male + childSummary.intakeDepartment.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.intakeDepartment.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.intakeDepartment.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	    <tr><td colspan="2"><b>22. Direct (<s:property value="childSummary.intakeDirect.male + childSummary.intakeDirect.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.intakeDirect.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.intakeDirect.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	    <tr><td colspan="2"><b>23. Parents (<s:property value="childSummary.intakeParent.male + childSummary.intakeParent.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.intakeParent.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.intakeParent.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>
	 </table>
	</div>
	
	<div style="margin: 20px 0 0 10px;float: left;">
       <table class="darkBlueTbl">
        <tr><th colspan="2">Socialized</th></tr>
	    <tr><td colspan="2"><b>24. Socialized Information in 2014 (<s:property value="childSummary.intakeCourt.male + childSummary.intakeCourt.female" /> )</b></td></tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label
				    	name="childSummary.intakeCourt.male"
				    	label="Male"  />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label
				    	name="childSummary.intakeCourt.female"
				    	label="Female"  />
		     	 </table>
		     </td>
	    </tr>

	 </table>
	</div>

	<div style="clear: both" />
  </div>
</div>


