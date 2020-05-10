function check(){
	var username = document.getElementById('username').value;
	var pass = document.getElementById('password').value;
	if(username==""){
		document.getElementById("message").innerText = "*请输入用户名";
		return false;
	}
	if(pass==""){
		document.getElementById("message").innerText = "*请输入密码";
		return false;
	}else{
		return true;
	}
	
}

function check12(){
	var mess = document.getElementById("result1").innerText;
	
	if(mess=="false"){
		document.getElementById("mess").innerText="*验证失败,请重新验证";
		//alert(mess);
		return false;
	}
	else{
		return true;
	}
}