function test(){
	var frmlogin = document.getElementById('frmlogin');
	var id = document.getElementById('mid').value;
	var password = document.getElementById('mpw').value;
	
	if(id == "")
    {
        alert('아이디를 입력해주세요.');
            return false;
    }else if(password == "")
    {
        alert('비밀번호를 입력해주세요.');
            return false;
    }
    else
    {
		frmlogin.method = 'post';
		frmlogin.action = '/login_member';
		frmlogin.submit(); 	
	}
}