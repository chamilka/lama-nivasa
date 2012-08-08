function userSeach() {
	var role=document.user.userRole;
	
	if(role.equals(OFFICER)){
		getElementById('unitTd').style.display='';
	}
	
	if(role.equals(USER)){
		getElementById('lamaNivasaTd').style.display='';
	}
}