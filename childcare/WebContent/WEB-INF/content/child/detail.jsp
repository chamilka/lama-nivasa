<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>

	<div>
	  <table style="width:100%">
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td class="sub-title">Detail</td>
	   		<td>&nbsp;</td>
	   			<td style="align:right; width:100px"> <a href="#"><img src='<s:url value="/images/ms-excel.png" />' style="width:48px;height:48px" title="Download MS-Excel" /></a></td>
	   </tr>
	  </table>
	 </div>

	<div style="margin: 20px 0 0 20px;border: 1px dotted;">
	 	<table>
	 	 <tr>
	 	   <td>
	 	     <table>
			  	<s:select headerKey="-1" headerValue="" label="Province"
		       			  list="#{'Central':'Central', 'Western':'Western', 'Southern':'Southern'}"></s:select>
	       	 </table>
	       </td>
	 	   <td>
	 	     <table> 			  
	       		<s:select headerKey="-1" headerValue="" label="District"
	       			  list="#{'Kandy':'Kandy', 'Matale':'Matale', 'Nuwara Eliya':'Nuwara Eliya', 'Colombo':'Colombo', 'Gampaha':'Gampaha'}"></s:select>
		     </table>
	       </td>
	 	   <td>
	 	     <table>
				<s:select headerKey="-1" headerValue="" label="Start Year"
	         			  list="#{'2012':'2012', '2013':'2013', '2014':'2014'}"></s:select>
	        </table>
	       </td>
	 	   <td>
	 	     <table> 			  
	        	<s:select headerKey="-1" headerValue="" label="End Year"
	       			  list="#{'2012':'2012', '2013':'2013', '2014':'2014'}"></s:select>
	       	 </table>
	       </td>
	       <td>
	          <input type="button" value="Filter" />
	       </td>
	      </tr>
		</table>
	</div>

	<div align="center" >
		<table style="text-align: left">
			<tr>
				<th>Socialized (Male)</th>
				<td>230</td>
			</tr>
			
			<tr>
				<th>Socialized (Female)</th>
				<td>211</td>
			</tr>
			
			<tr>
				<th>Intake (Male)</th>
				<td>22</td>
			</tr>
			
			<tr>
				<th>Intake (Female)</th>
				<td>75</td>
			</tr>
		</table>
	</div>
			
	<div style="clear: both"></div>


</div>

