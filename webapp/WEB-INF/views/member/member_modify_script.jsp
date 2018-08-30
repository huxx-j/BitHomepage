
<script type="text/javascript">

    function submit_it()
    {
        if(document.memform.user_nameEng_first.value=="")
        {
            alert("영문이름을 입력하세요!");
            document.memform.user_nameEng_first.focus();
        }
        else if (document.memform.user_nameEng_first.value.indexOf(" ")!=-1)
        {

            alert("영문이름을 공백없이 입력해 주세요.");
            document.memform.user_nameEng_first.focus();
        }

        else if (memform.user_nameEng_second.value=="")
        {
            alert("영문 이름(성)을 써주세요.");
            document.memform.user_nameEng_second.focus();
        }
        else if (document.memform.user_nameEng_second.value.indexOf(" ")!=-1)
        {

            alert("영문 이름(성)을 공백없이 입력해 주세요.");
            document.memform.user_nameEng_second.focus();
        }
        else if (memform.password.value=="")
        {
            alert("비밀번호를 써주세요.");
            document.memform.password.focus();
        }

        else if (memform.confirm_pwd.value=="")
        {
            alert("비밀번호 확인을 써주세요.");
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
        /*
            else if(document.memform.SocialNo1.value=="")
            {
                alert("주민등록번호를 입력하세요!");
                document.memform.SocialNo1.focus();
            }

            else if(document.memform.SocialNo2.value=="")
            {
                alert("주민등록번호를 입력하세요!");
                document.memform.SocialNo2.focus();
            }
        */
        else if (memform.telephone1.value=="")
        {
            alert("전화번호를 써주세요.");
            document.memform.telephone1.focus();
        }

        else if(!check_num(memform.telephone1.value)) {
            alert("전화번호를 숫자로만 정확히 기재해주시길 바랍니다.");
            document.memform.telephone1.focus();
        }

        else if (memform.telephone2.value=="")
        {
            alert("전화번호를 써주세요.");
            document.memform.telephone2.focus();
        }

        else if(!check_num(memform.telephone2.value)) {
            alert("전화번호를 숫자로만 정확히 기재해주시길 바랍니다.");
            document.memform.telephone2.focus();
        }

        else if (memform.telephone3.value=="")
        {
            alert("전화번호를 써주세요.");
            document.memform.telephone3.focus();
        }

        else if(!check_num(memform.telephone3.value)) {
            alert("전화번호를 숫자로만 정확히 기재해주시길 바랍니다.");
            document.memform.telephone3.focus();
        }

        else if (memform.handphone1.value=="")
        {
            alert("핸드폰 번호를 써주세요.");
            document.memform.handphone1.focus();
        }

        else if(!check_num(memform.handphone1.value)) {
            alert("핸드폰 번호를 숫자로만 정확히 기재해주시길 바랍니다.");
            document.memform.handphone1.focus();
        }

        else if (memform.handphone2.value=="")
        {
            alert("핸드폰 번호를 써주세요.");
            document.memform.handphone2.focus();
        }

        else if(!check_num(memform.handphone2.value)) {
            alert("핸드폰 번호를 숫자로만 정확히 기재해주시길 바랍니다.");
            document.memform.handphone2.focus();
        }

        else if (memform.handphone3.value=="")
        {
            alert("핸드폰 번호를 써주세요.");
            document.memform.handphone3.focus();
        }

        else if(!check_num(memform.handphone3.value)) {
            alert("핸드폰 번호를 숫자로만 정확히 기재해주시길 바랍니다.");
            document.memform.handphone3.focus();
        }
        else if (memform.email.value=="")
        {
            alert("이메일 주소를 입력하여 주세요.");
            document.memform.email.focus();
        }
        else if (memform.czipcode.value=="")
        {
            alert("우편번호가 입력되지 않았습니다.개인정보에서 수정하실 수 있습니다");
            document.memform.czipcode.focus();
        }
        else if (memform.caddr.value=="")
        {
            alert("주민등록상 주소가 입력되지  않았습니다.개인정보에서 수정하실 수 있습니다.");
            document.memform.caddr.focus();
        }
        else if (memform.czipcode2.value=="")
        {
            alert("현주소의 우편번호가 입력되지 않았습니다.");
            document.memform.czipcode2.focus();
        }
        else if (memform.caddr2.value=="")
        {
            alert("현주소가 입력되지  않았습니다.개인정보에서 수정하실 수 있습니다.");
            document.memform.caddr2.focus();
        }else {
            document.memform.submit();
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

    function onlyNumber()//숫자만 입력하게 하는 방법
    {
        if((event.keyCode<48)||(event.keyCode>57))
            event.returnValue = false;
    }

    function zip_search1()
    {
        window.open("/Member/zipserch1.asp?tozip=C&path=comp","","height=800,width=700,status=no,scrollbars=yes,toolbar=no,titlebar=no,menubar=no,location=0,left=300,top=300")
    }

    function zip_search2()
    {
        window.open("/Member/zipserch2.asp?tozip=C&path=comp","","height=800,width=700,status=no,scrollbars=yes,toolbar=no,titlebar=no,menubar=no,location=0,left=300,top=300")
    }

    function chk_sendaddr(fm)
    {
        if(fm.sendaddr.checked==true)
        {
            fm.czipcode2.value=fm.czipcode.value;
            fm.caddr2.value=fm.caddr.value;
        }
        else
        {
            fm.czipcode2.value=""
            fm.caddr2.value=""
        }
    }

</script>
<!--<script language="vbscript">-->
<!--sub zipsearch_onClick()	//'우편번호체크-->
<!--window.open "/Member/zipserch1.asp?tozip=C",null,"height=800,width=700,status=no,scrollbars=yes,toolbar=no,titlebar=no,menubar=no,location=0,left=300,top=300"-->
<!--end sub                                                 -->
<!--</script>-->