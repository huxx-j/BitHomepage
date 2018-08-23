<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


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

    function onlyNumber()//숫자만 입력하게 하는 방법
    {
        if((event.keyCode<48)||(event.keyCode>57))
            event.returnValue = false;
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
    //-->
</script>

<script language="vbscript">
	sub zipsearch_onClick()	//'우편번호체크
		window.open "/Member/zipserch1.asp?tozip=C",null,"height=800,width=700,status=no,scrollbars=yes,toolbar=no,titlebar=no,menubar=no,location=0,left=300,top=300"
	end sub                                                 
</script>