<script>
<!--
function submit_it()
{

	if(document.memform.name.value=="")
	{
		alert("�̸��� �Է��� �ּ���.");
		document.memform.name.focus();
	}
	else if (document.memform.name.value.indexOf(" ")!=-1)
	{
		
		alert("�̸��� ������� �Է��� �ּ���.");
		document.memform.name.focus();
	}	
	else if (memform.username.value=="")
	{
		alert("���̵� �Է��� �ּ���.");
		document.memform.username.focus();
		openid();
	}
	else if (memform.idcheck.value!="Y")
	{
		alert("���̵� �ߺ�Ȯ���� �� �ּ���.");
		document.memform.username.focus();
	}
	else if (document.memform.username.value.indexOf(" ")!=-1)
	{
		
		alert("���̵� ������� �Է��� �ּ���.");
		document.memform.username.focus();
	}
	
 	else if ((document.memform.username.value.length<4) || (document.memform.username.value.length>8))
	{
		alert("���̵�� 4���� �̻� 8���� �����Դϴ�!");
		document.memform.username.focus();
  	}
	
	else if(!check_char(document.memform.username.value)){
		alert("id�� ������,���ڸ� ����ϽǼ� �ֽ��ϴ�.");
		document.memform.username.focus();
		//return;
	}
	else if (memform.password.value=="")
	{
		alert("��й�ȣ�� �Է��� �ּ���.");
		document.memform.password.focus();
	}
	
	else if (memform.confirm_pwd.value=="")
	{
		alert("��й�ȣ Ȯ���� �Է��� �ּ���.");
		document.memform.confirm_pwd.focus();
	}
	
	else if (document.memform.password.value.indexOf(" ")!=-1)
	{
		
		alert("ù��° ��й�ȣ�� ������� �Է��� �ּ���.");
		document.memform.password.focus();
	}
	
	else if(!check_char(document.memform.password.value)){
		alert("password�� ������,���ڸ� ����ϽǼ� �ֽ��ϴ�.");
		document.memform.password.focus();
		//return;
	}
	
	else if (document.memform.confirm_pwd.value.indexOf(" ")!=-1)
	{
		
		alert("�ι�° ��й�ȣ�� ������� �Է��� �ּ���.");
		document.memform.confirm_pwd.focus();
	}
	
	else if(!check_char(document.memform.confirm_pwd.value)){
		alert("password Ȯ���� ������,���ڸ� ����ϽǼ� �ֽ��ϴ�.");
		document.memform.confirm_pwd.focus();
		//return;
	}
	
	else if(memform.password.value !=memform.confirm_pwd.value)
	{
		alert("2��° �Է��� ��й�ȣ��\n\n1��° ��й�ȣ�� ���� �ʽ��ϴ�.");
		document.memform.confirm_pwd.focus();
	}
	
 	else if ((document.memform.password.value.length<4) || (document.memform.password.value.length>16))
	{
		alert("ù��° ��й�ȣ�� 4���� �̻� 16���� �����Դϴ�!");
		document.memform.password.focus();
  	}
	
 	else if ((document.memform.confirm_pwd.value.length<4) || (document.memform.confirm_pwd.value.length>16))
	{
		alert("�ι�° ��й�ȣ�� 4���� �̻� 16���� �����Դϴ�!");
		document.memform.confirm_pwd.focus();
  	}
	
	else if (memform.telephone1.value=="")
	{
		alert("��ȭ��ȣ�� ���ּ���.");
		document.memform.telephone1.focus();
	}
	
	else if(!check_num(memform.telephone1.value)) { 
		alert("��ȭ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�."); 
		document.memform.telephone1.focus(); 
		return;
	}
	
	else if (memform.telephone2.value=="")
	{
		alert("��ȭ��ȣ�� ���ּ���.");
		document.memform.telephone2.focus();
	}
	
	else if(!check_num(memform.telephone2.value)) { 
		alert("��ȭ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�."); 
		document.memform.telephone2.focus(); 
		return;
	}
	
	else if (memform.telephone3.value=="")
	{
		alert("��ȭ��ȣ�� ���ּ���.");
		document.memform.telephone3.focus();
	}
	
	else if(!check_num(memform.telephone3.value)) { 
		alert("��ȭ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�."); 
		document.memform.telephone3.focus(); 
		return;
	}
	
	else if (memform.handphone1.value=="")
	{
		alert("�ڵ��� ��ȣ�� ���ּ���.");
		document.memform.handphone1.focus();
	}
	
	else if(!check_num(memform.handphone1.value)) { 
		alert("�ڵ��� ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�."); 
		document.memform.handphone1.focus(); 
		return;
	}
	
	else if (memform.handphone2.value=="")
	{
		alert("�ڵ��� ��ȣ�� ���ּ���.");
		document.memform.handphone2.focus();
	}
	
	else if(!check_num(memform.handphone2.value)) { 
		alert("�ڵ��� ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�."); 
		document.memform.handphone2.focus(); 
		return;
	}
	
	else if (memform.handphone3.value=="")
	{
		alert("�ڵ��� ��ȣ�� ���ּ���.");
		document.memform.handphone3.focus();
	}
	
	else if(!check_num(memform.handphone3.value)) { 
		alert("�ڵ��� ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�."); 
		document.memform.handphone3.focus(); 
		return;
	}
	else if (memform.mail1.value=="")
	{
		alert("�̸��� ���̵� �Է��Ͽ� �ּ���.");
		document.memform.mail1.focus();
	}
	else if (memform.mail2.value=="")
	{
		alert("�̸��� �ּҸ� �Է��Ͽ� �ּ���.");
		document.memform.mail.focus();
	}	
	
}



//������ üũ
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


//���ڸ� ���
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
		alert("��Ȯ�� ���� �ּҸ� �Է����ּ���.");
		memform.mail.focus();
		return false;
	}
*/
	/* �Ѹ���(����) �ּ�ó��
	else {
		var arrEmail = emailValue.split("@");
		if ((arrEmail[1] == "hanmail.net")||(arrEmail[1] == "daum.net")){
			alert("�Ѹ��� �ּҴ� ����Ͻ� �� �����ϴ�.");
			memform.mail.focus();
			return false;
		}
	}
	*/
	
	Str=document.memform.mail1.value+"@"+document.memform.mail2.value;
	
	if(MailCheck(Str)==false)
	{
//		alert(Str);
		alert("Email�ּҰ� ��ȿ���� �ʽ��ϴ�.\n"+"��Ȯ�� Email�ּҸ� �Է��ϼ���!");
		document.memform.mail1.value=="";
		document.memform.mail2.value=="";
		document.memform.mail1.focus();
		return false;
	};
	
		
	if(SpecialCharCheck())
	{
		alert("Ư�����ڰ� �� �׸��� �ֽ��ϴ�.\n");
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

