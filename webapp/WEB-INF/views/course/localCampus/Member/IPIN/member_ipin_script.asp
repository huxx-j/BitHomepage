<script>
<!--
function submit_it()
{

	if(document.memform.name.value=="")
	{
		alert("이름을 입력해 주세요.");
		document.memform.name.focus();
	}
	else if (document.memform.name.value.indexOf(" ")!=-1)
	{
		
		alert("이름을 공백없이 입력해 주세요.");
		document.memform.name.focus();
	}	
	else if (memform.username.value=="")
	{
		alert("아이디를 입력해 주세요.");
		document.memform.username.focus();
		openid();
	}
	else if (memform.idcheck.value!="Y")
	{
		alert("아이디 중복확인을 해 주세요.");
		document.memform.username.focus();
	}
	else if (document.memform.username.value.indexOf(" ")!=-1)
	{
		
		alert("아이디를 공백없이 입력해 주세요.");
		document.memform.username.focus();
	}
	
 	else if ((document.memform.username.value.length<4) || (document.memform.username.value.length>8))
	{
		alert("아이디는 4글자 이상 8글자 이하입니다!");
		document.memform.username.focus();
  	}
	
	else if(!check_char(document.memform.username.value)){
		alert("id는 영문자,숫자만 사용하실수 있습니다.");
		document.memform.username.focus();
		//return;
	}
	else if (memform.password.value=="")
	{
		alert("비밀번호를 입력해 주세요.");
		document.memform.password.focus();
	}
	
	else if (memform.confirm_pwd.value=="")
	{
		alert("비밀번호 확인을 입력해 주세요.");
		document.memform.confirm_pwd.focus();
	}
	
	else if (document.memform.password.value.indexOf(" ")!=-1)
	{
		
		alert("첫번째 비밀번호를 공백없이 입력해 주세요.");
		document.memform.password.focus();
	}
	
	else if(!check_char(document.memform.password.value)){
		alert("password는 영문자,숫자만 사용하실수 있습니다.");
		document.memform.password.focus();
		//return;
	}
	
	else if (document.memform.confirm_pwd.value.indexOf(" ")!=-1)
	{
		
		alert("두번째 비밀번호를 공백없이 입력해 주세요.");
		document.memform.confirm_pwd.focus();
	}
	
	else if(!check_char(document.memform.confirm_pwd.value)){
		alert("password 확인은 영문자,숫자만 사용하실수 있습니다.");
		document.memform.confirm_pwd.focus();
		//return;
	}
	
	else if(memform.password.value !=memform.confirm_pwd.value)
	{
		alert("2번째 입력한 비밀번호가\n\n1번째 비밀번호와 같지 않습니다.");
		document.memform.confirm_pwd.focus();
	}
	
 	else if ((document.memform.password.value.length<4) || (document.memform.password.value.length>16))
	{
		alert("첫번째 비밀번호는 4글자 이상 16글자 이하입니다!");
		document.memform.password.focus();
  	}
	
 	else if ((document.memform.confirm_pwd.value.length<4) || (document.memform.confirm_pwd.value.length>16))
	{
		alert("두번째 비밀번호는 4글자 이상 16글자 이하입니다!");
		document.memform.confirm_pwd.focus();
  	}
	
	else if (memform.telephone1.value=="")
	{
		alert("전화번호를 써주세요.");
		document.memform.telephone1.focus();
	}
	
	else if(!check_num(memform.telephone1.value)) { 
		alert("전화번호를 숫자로만 정확히 기재해주시길 바랍니다."); 
		document.memform.telephone1.focus(); 
		return;
	}
	
	else if (memform.telephone2.value=="")
	{
		alert("전화번호를 써주세요.");
		document.memform.telephone2.focus();
	}
	
	else if(!check_num(memform.telephone2.value)) { 
		alert("전화번호를 숫자로만 정확히 기재해주시길 바랍니다."); 
		document.memform.telephone2.focus(); 
		return;
	}
	
	else if (memform.telephone3.value=="")
	{
		alert("전화번호를 써주세요.");
		document.memform.telephone3.focus();
	}
	
	else if(!check_num(memform.telephone3.value)) { 
		alert("전화번호를 숫자로만 정확히 기재해주시길 바랍니다."); 
		document.memform.telephone3.focus(); 
		return;
	}
	
	else if (memform.handphone1.value=="")
	{
		alert("핸드폰 번호를 써주세요.");
		document.memform.handphone1.focus();
	}
	
	else if(!check_num(memform.handphone1.value)) { 
		alert("핸드폰 번호를 숫자로만 정확히 기재해주시길 바랍니다."); 
		document.memform.handphone1.focus(); 
		return;
	}
	
	else if (memform.handphone2.value=="")
	{
		alert("핸드폰 번호를 써주세요.");
		document.memform.handphone2.focus();
	}
	
	else if(!check_num(memform.handphone2.value)) { 
		alert("핸드폰 번호를 숫자로만 정확히 기재해주시길 바랍니다."); 
		document.memform.handphone2.focus(); 
		return;
	}
	
	else if (memform.handphone3.value=="")
	{
		alert("핸드폰 번호를 써주세요.");
		document.memform.handphone3.focus();
	}
	
	else if(!check_num(memform.handphone3.value)) { 
		alert("핸드폰 번호를 숫자로만 정확히 기재해주시길 바랍니다."); 
		document.memform.handphone3.focus(); 
		return;
	}
	else if (memform.mail1.value=="")
	{
		alert("이메일 아이디를 입력하여 주세요.");
		document.memform.mail1.focus();
	}
	else if (memform.mail2.value=="")
	{
		alert("이메일 주소를 입력하여 주세요.");
		document.memform.mail.focus();
	}	
	
}



//영숫자 체크
function check_char(input_str) {
	var alpha = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	var numeric = '1234567890';
	var nonkorean = alpha+numeric;

	for (var i=0; i < input_str.length; i++ ) {
		if( nonkorean.indexOf(input_str.substring(i,i+1)) < 0) {
			break ;
		}
	}
	
	if ( i != input_str.length ) {
		return false ; 
	} else{
		return true ;
	}
	return true;
}


//숫자만 사용
function check_num(input_str) {
	var result=true;

	for(var i=0;i<input_str.length;i++) {
		var codenum=input_str.charCodeAt(i);
		if(codenum > 58 || codenum<47) {
			result=false;
		}
	}
	return result;
}


function check()
{

}

function SpecialCharStrCheck(str)
{
   if(str.search(/[\|&`':%]/) != -1) { return true; };
}

function SpecialCharCheck1()
{
 if(SpecialCharStrCheck(document.memform.name.value)){ return true; };
}

function SpecialCharCheck2()
{
 if(SpecialCharStrCheck(document.memform.username.value)){ return true; };  
}

function SpecialCharCheck3()
{
 if(SpecialCharStrCheck(document.memform.password.value)){ return true; };  
}

function   check2()
{
	var emailValue = document.memform.mail2.value;

/*		@ check
	if (emailValue.search("@") == -1 ){
		alert("정확한 메일 주소를 입력해주세요.");
		memform.mail.focus();
		return false;
	}
*/
	/* 한메일(다음) 주석처리
	else {
		var arrEmail = emailValue.split("@");
		if ((arrEmail[1] == "hanmail.net")||(arrEmail[1] == "daum.net")){
			alert("한메일 주소는 등록하실 수 없습니다.");
			memform.mail.focus();
			return false;
		}
	}
	*/
	
	Str=document.memform.mail1.value+"@"+document.memform.mail2.value;
	
	if(MailCheck(Str)==false)
	{
//		alert(Str);
		alert("Email주소가 유효하지 않습니다.\n"+"정확한 Email주소를 입력하세요!");
		document.memform.mail1.value=="";
		document.memform.mail2.value=="";
		document.memform.mail1.focus();
		return false;
	};
	
		
	if(SpecialCharCheck())
	{
		alert("특수문자가 들어간 항목이 있습니다.\n");
	}
	
	else 
	{
		document.memform.submit();
	}
}

function SpecialCharStrCheck(str)
{
   if(str.search(/[\|&`':%]/) != -1) { return true; };
}

function SpecialCharCheck()
{
 if(SpecialCharStrCheck(document.memform.mail1.value)){ return true; };
 if(SpecialCharStrCheck(document.memform.mail2.value)){ return true; };
}

function MailCheck(str)
{
  mailEx1 = /[^@]+@[A-Za-z0-9_\-]+\.[A-Za-z]+/;
  mailEx2 = /[^@]+@[A-Za-z0-9_\-]+\.[A-Za-z0-9_\-]+\.[A-Za-z]+/;
  mailEx3 = /[^@]+@[A-Za-z0-9_\-]+\.[A-Za-z0-9_\-]+\.[A-Za-z0-9_\-]+\.[A-Za-z]+/;
  if(mailEx1.test(str)){ return true; };
  if(mailEx2.test(str)){ return true; };
  if(mailEx3.test(str)){ return true; };
  return false;
}




// -->
</script>

<script>
<!--
function searchUserID() {
	if (document.memform.id.value == "") {
		window.open("p_search_id.asp","chkUserID","width=370,height=300,screenX=200,screenY=200, menubar=no, toolbar=no, scrollbars=auto");
//		window.open("p_post.asp","chkUserID","width=299,height=199,screenX=200,screenY=200, menubar=no, toolbar=no, scrollbars=auto");
	} else {
		window.open("p_search_id.asp?fID="+document.memform.username.value,"chkUserID","width=370,height=300,screenX=200,screenY=200, menubar=no, toolbar=no, scrollbars=auto");
//		window.open("p_post.asp?fID="+document.memform.username.value,"chkUserID","width=299,height=199,screenX=200,screenY=200, menubar=no, toolbar=no, scrollbars=auto");
	}
}

//function zipcode()
//{  
//	myWindow = window.open("zipcode.asp", "preview", "toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=no,resizable=0,copyhistory=0,width=500 ,height=200");
//}
//-->
</script>

