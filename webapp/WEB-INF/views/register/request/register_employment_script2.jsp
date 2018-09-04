<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<script type="text/javascript">

        function submit_it(nextProc)
        {
            if(ExpertApp.Motivetext.value.length<2)
            {
                alert("지원동기를 입력하여 주십시요")
                ExpertApp.Motivetext.focus();
                return;
            }


            if(ExpertApp.Studytext.value.length<2)
            {
                alert("학습내용을 입력하여 주십시요")
                ExpertApp.Studytext.focus();
                return;
            }

            str="";
            if(ExpertApp.Newchkbox0.checked==true || ExpertApp.Newchkbox1.checked==true){
                str=str+"Y";
            }
            if(ExpertApp.Magchkbox0.checked==true || ExpertApp.Magchkbox1.checked==true){
                str=str+"Y";
            }
            if(ExpertApp.Etcchkbox0.checked==true || ExpertApp.Etcchkbox1.checked==true || ExpertApp.Etcchkbox2.checked==true || ExpertApp.Etcchkbox3.checked==true || ExpertApp.Etcchkbox4.checked==true || ExpertApp.Etcchkbox5.checked==true){
                str=str+"Y";
            }

            if(str=="" && ExpertApp.Name.value=="" && ExpertApp.EtcName.value==""){
                alert("지원경로를 입력하여 주십시요")
                return;
            }


            document.ExpertApp.submit();

        }

    function chknext(obj)
    {
        if(obj.value.length < 4){
            alert("년도는 4자리를 입력하십시요(YYYY)");
            obj.focus();
        }
    }


    function onlyNumber()//숫자만 입력하게 하는 방법
    {
        if((event.keyCode<48)||(event.keyCode>57))
            event.returnValue = false;
    }


    function  chklen(fm,str)
    {
        if(fm.value.length>200){
            alert(str + "는(은)  최대 200자까지 적을 수 있습니다")
            event.returnValue=false;
        }
        else
        {
            event.returnValue=true;
        }
    }

    // 함수 : chklen_motive(fm) ### 지원동기 ###
    function chklen_motive(fm)
    {
        var		i = 0;
        var		One_Char = "";
        var		TString = fm.value;
        var		TString_Length = TString.length;
        var		TString2 = "";
        var		TString2_Length = 0;
        var		TByte = 0;

        for (i=0; i<TString_Length; i++)
        {
            // 한글자 추출
            One_Char = TString.charAt(i);
            // 한글이면 2를 더한다.
            if (escape(One_Char).length > 4)
            {
                TByte+=2;
            }
            // 그 밖의 경우는 1을 더한다.
            else
            {
                TByte++;
            }
            // 전체 크기가 1000을 넘지 않는 경우
            //if (TByte <= 500)
            if (TByte <= 1000)
            {
                TString2_Length = i + 1;
            }
        }

        // 전체길이를 초과한 경우
        //if (TByte > 500)
        if (TByte > 2000)
        {
            //alert("지원동기는 최대 500자까지 적을 수 있습니다.\n초과된 내용은 자동으로 삭제됩니다.\n\n현재 총 " + TByte + " 글자입니다.")
            alert("지원동기는 최대 2,000 바이트(한글은 2바이트)까지 적을 수 있습니다.\n초과된 내용은 자동으로 삭제됩니다.\n\n현재 총 " + TByte + " 바이트입니다.");
            TString2 = TString.substr(0, TString2_Length);
            fm.value = TString2;
            fm.focus();
        }
    }

    // 함수 : chklen_study(fm) ### 학습내용 ###
    function chklen_study(fm)
    {
        var		i = 0;
        var		One_Char = "";
        var		TString = fm.value;
        var		TString_Length = TString.length;
        var		TString2 = "";
        var		TString2_Length = 0;
        var		TByte = 0;

        for (i=0; i<TString_Length; i++)
        {
            // 한글자 추출
            One_Char = TString.charAt(i);
            // 한글이면 2를 더한다.
            if (escape(One_Char).length > 4)
            {
                TByte+=2;
            }
            // 그 밖의 경우는 1을 더한다.
            else
            {
                TByte++;
            }
            // 전체 크기가 1000을 넘지 않는 경우
            if (TByte <= 250)
            {
                TString2_Length = i + 1;
            }
        }

        // 전체길이를 초과한 경우
        if (TByte > 250)
        {
            alert("학습내용은 최대 250자까지 적을 수 있습니다.\n초과된 내용은 자동으로 삭제됩니다.\n\n현재 총 " + TByte + " 글자입니다.")
            TString2 = TString.substr(0, TString2_Length);
            fm.value = TString2;
            fm.focus();
        }
    }
</script>
