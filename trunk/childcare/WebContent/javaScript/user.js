
function userSearch() {
	var role = document.getElementById("userRole").value;
	
	
	if(role == "OFFICER"){
		document.getElementById('unitTd').style.display='';
		document.getElementById('lamaNivasaTd').style.display='none';
	}
 	
	else if(role == "USER" ){
		document.getElementById('lamaNivasaTd').style.display='';
		document.getElementById('unitTd').style.display='none';
	}
	
	else{
		document.getElementById('lamaNivasaTd').style.display='none';
		document.getElementById('unitTd').style.display='none';		
	}
}

function addUser(){	
	var role = document.getElementById("addUserRole").value;

	if(role == "OFFICER"){
		/*document.getElementById('unit').style.display='';*/
		document.getElementById('unitSelect').style.display='';
		document.getElementById('lamaNivasaSelect').style.display='none';
	/*	document.getElementById('lamaNivasa').style.display='none';*/
	}
 	
	else if(role == "USER" ){
		//document.getElementById('lamaNivasa').style.display='';
		document.getElementById('lamaNivasaSelect').style.display='';
		document.getElementById('unitSelect').style.display='none';
		//document.getElementById('unit').style.display='none';
	}
	
	else{
		//document.getElementById('lamaNivasa').style.display='none';
		document.getElementById('lamaNivasaSelect').style.display='none';
		document.getElementById('unitSelect').style.display='none';
		//document.getElementById('unit').style.display='none';		
	}
}