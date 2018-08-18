
<script>
    <!--

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
        var yy = document.memform.SocialNo1.value.substring(0,2)
        var mm = document.memform.SocialNo1.value.substring(2,4)
        var dd = document.memform.SocialNo1.value.substring(4,6)
        var sex = document.memform.SocialNo2.value.substring(0,1)

        if ((document.memform.SocialNo1.value.length!=6)||(yy <25||mm <1||mm>12||dd<1))
        {
            alert("주민번호를 바로 입력해 주세요!");
            document.memform.SocialNo1.focus();
        }

        else if ((sex != 1 && sex !=2 &&  sex !=3 && sex !=4   )||(document.memform.SocialNo2.value.length != 7 ))
        {
            alert("주민번호를 바로 입력해 주세요!");
            document.memform.SocialNo2.focus();
        }

        else if (SocialNo_check())
        {
            alert ("유효하지 않은 주민등록번호입니다.");
        }
    }

    function   SocialNo_check()
    {
        var chk =0
        for (var i = 0; i <=5 ; i++)
        {
            chk = chk + ((i%8+2) * parseInt(document.memform.SocialNo1.value.substring(i,i+1)))
        }

        for (var i = 6; i <=11 ; i++)
        {
            chk = chk + ((i%8+2) * parseInt(document.memform.SocialNo2.value.substring(i-6,i-5)))
        }


        chk = 11 - (chk %11)
        chk = chk % 10


        if (chk != document.memform.SocialNo2.value.substring(6,7))
        {
            alert ("유효하지 않은 주민등록번호입니다.");
            document.memform.SocialNo1.focus();
        }

        else if(SpecialCharCheck1())
        {
            alert("특수문자가 들어간 항목이 있습니다.\n");
        }

        //아이디
        else if(SpecialCharCheck2())
        {
            alert("아이디에 특수문자가 들어가있습니다.\n");
        }

        //패스워드
        else if(SpecialCharCheck3())
        {
            alert("패스워드에 특수문자가 들어가있습니다.\n");
        }

        else if(check2())
        {
            alert("Email주소를 입력하세요!");
        }
    }

    function SpecialCharStrCheck(str)
    {
        if(str.search(/[\|&`':%]/) != -1) { return true; };
    }

    function SpecialCharCheck1()
    {
        if(SpecialCharStrCheck(document.memform.name.value)){ return true; };
        if(SpecialCharStrCheck(document.memform.SocialNo1.value)){ return true; };
        if(SpecialCharStrCheck(document.memform.SocialNo2.value)){ return true; };
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

    function pid1_checklength() {
        var pid = document.memform.SocialNo1.value;
        if (pid.length == 6 ) document.memform.SocialNo2.focus();
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