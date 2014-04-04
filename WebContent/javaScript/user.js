function userSearch() {
	var role = document.getElementById("searchUserRole").value;

	if (role == "OFFICER") {
		document.getElementById('unitTd').style.display = '';
		document.getElementById('lamaNivasaTd').style.display = 'none';
	}

	else if (role == "USER") {
		document.getElementById('lamaNivasaTd').style.display = '';
		document.getElementById('unitTd').style.display = 'none';
	}

	else {
		document.getElementById('lamaNivasaTd').style.display = 'none';
		document.getElementById('unitTd').style.display = 'none';
	}
}

function addUser() {
	var role = document.getElementById("addUserRole").value;

	if (role == "OFFICER") {
		document.getElementById('unitSelect').style.display = '';
		document.getElementById('lamaNivasaSelect').style.display = 'none';
	}

	else if (role == "USER") {
		document.getElementById('lamaNivasaSelect').style.display = '';
		document.getElementById('unitSelect').style.display = 'none';
	}

	else {
		document.getElementById('lamaNivasaSelect').style.display = 'none';
		document.getElementById('unitSelect').style.display = 'none';
	}
}