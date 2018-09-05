<script>
<!--
function pid1_checklength3()
{
	var pid = document.Lost_Form.SocialNo1.value;
	if (pid.length == 6 ) document.Lost_Form.SocialNo2.focus();
}

function pid1_checklength4()
{
	var pid = document.Lost_Form.SocialNo2.value;
	//if (pid.length == 7 ) document.Lost_Form.realname.focus();
}

function MoveFocus()
{
  document.Lost_Form.SocialNo1.focus();
  return;
}

function submit_id_lost()
{
	
	if (Lost_Form.realname.value=="")
	{
		alert("이름을 입력해 주세요.");
		document.Lost_Form.realname.focus();
	}
	else if (document.Lost_Form.realname.value.indexOf(" ")!=-1)
	{
		
		alert("이름을 공백없이 입력해 주세요.");
		document.Lost_Form.realname.focus();
	}
	else if (Lost_Form.SocialNo1.value=="")
	{
		alert("휴대폰 번호 첫번째 자리를 입력해 주세요.");
		document.Lost_Form.SocialNo1.focus();
	}
	
	else if (Lost_Form.SocialNo2.value=="")
	{
		alert("휴대폰 번호 가운데 자리를 입력해 주세요.");
		document.Lost_Form.SocialNo2.focus();
	}	

	else if (Lost_Form.SocialNo3.value=="")
	{
		alert("휴대폰 번호 마지막 자리를 입력해 주세요.");
		document.Lost_Form.SocialNo3.focus();
	}

    else
    {
        document.Lost_Form.submit();
    }
}

function SpecialCharStrCheck(str)
{
   if(str.search(/[\|&`':%]/) != -1) { return true; };
}

function SpecialCharCheck1()
{
 if(SpecialCharStrCheck(document.Lost_Form.realname.value)){ return true; };  
 if(SpecialCharStrCheck(document.Lost_Form.SocialNo1.value)){ return true; };  
 if(SpecialCharStrCheck(document.Lost_Form.SocialNo2.value)){ return true; };  
}
//-->
</script>


<script>
<!--
function pid1_checklength31()
{
	var pid = document.Lost_Form1.SocialNo1.value;
	if (pid.length == 6 ) document.Lost_Form1.SocialNo2.focus();
}

function pid1_checklength41()
{
	var pid = document.Lost_Form1.SocialNo2.value;
	//if (pid.length == 7 ) document.Lost_Form.realname.focus();
}

function MoveFocus1()
{
  document.Lost_Form1.SocialNo1.focus();
  return;
}

function submit_pass_lost()
{
	if (Lost_Form1.username.value=="")
	{
		alert("ID를 입력해 주세요.");
		document.Lost_Form1.username.focus();
	}
	else if (document.Lost_Form1.username.value.indexOf(" ")!=-1)
	{
		
		alert("ID는 공백없이 입력해 주세요.");
		document.Lost_Form1.username.focus();
	}
        	
	else if (Lost_Form1.realname.value=="")
	{
		alert("이름을 입력해 주세요.");
		document.Lost_Form1.realname.focus();
	}
	else if (document.Lost_Form1.realname.value.indexOf(" ")!=-1)
	{
		
		alert("이름을 공백없이 입력해 주세요.");
		document.Lost_Form1.realname.focus();
	}

	else if (Lost_Form1.SocialNo1.value=="")
	{
		alert("휴대폰 번호 첫번째 자리를 입력해 주세요.");
		document.Lost_Form1.SocialNo1.focus();
	}
	
	else if (Lost_Form1.SocialNo2.value=="")
	{
		alert("휴대폰 번호 가운데 자리를 입력해 주세요.");
		document.Lost_Form1.SocialNo2.focus();
	}

    else if (Lost_Form1.SocialNo3.value=="")
	{
		alert("휴대폰 번호 마지막 자리를 입력해 주세요.");
		document.Lost_Form1.SocialNo3.focus();
	}

    else
    {
        document.Lost_Form1.submit();
    }
}

function SpecialCharStrCheck1(str)
{
   if(str.search(/[\|&`':%]/) != -1) { return true; };
}

function SpecialCharCheck11()
{
 if(SpecialCharStrCheck1(document.Lost_Form1.realname.value)){ return true; };  
 if(SpecialCharStrCheck1(document.Lost_Form1.SocialNo1.value)){ return true; };  
 if(SpecialCharStrCheck1(document.Lost_Form1.SocialNo2.value)){ return true; };  
}
//-->
</script>
