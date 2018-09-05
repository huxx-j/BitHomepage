<script language="javascript">
    <!--

    function Change_Degree(obj, obj_num)
    {
        var		i;
        if (obj.value == " 대학")
        {
            if (obj_num == 1)
            {
                document.ExpertApp.SchDegree_1.clear;
                document.ExpertApp.SchDegree_1.options[0] = new Option('=선택=', '');
                document.ExpertApp.SchDegree_1.options[1] = new Option('전문학사', '전문학사');
                document.ExpertApp.SchDegree_1.options[2] = new Option('석사', '석사');
                document.ExpertApp.SchDegree_1.options[3] = new Option('박사', '박사');
            }
            if (obj_num == 2)
            {
                document.ExpertApp.SchDegree_2.clear;
                document.ExpertApp.SchDegree_2.options[0] = new Option('=선택=', '');
                document.ExpertApp.SchDegree_2.options[1] = new Option('전문학사', '전문학사');
                document.ExpertApp.SchDegree_2.options[2] = new Option('석사', '석사');
                document.ExpertApp.SchDegree_2.options[3] = new Option('박사', '박사');
            }
            if (obj_num == 3)
            {
                document.ExpertApp.SchDegree_3.clear;
                document.ExpertApp.SchDegree_3.options[0] = new Option('=선택=', '');
                document.ExpertApp.SchDegree_3.options[1] = new Option('전문학사', '전문학사');
                document.ExpertApp.SchDegree_3.options[2] = new Option('석사', '석사');
                document.ExpertApp.SchDegree_3.options[3] = new Option('박사', '박사');
            }
        }
        if (obj.value == "대학교")
        {
            if (obj_num == 1)
            {
                document.ExpertApp.SchDegree_1.clear;
                document.ExpertApp.SchDegree_1.options[0] = new Option('=선택=', '');
                document.ExpertApp.SchDegree_1.options[1] = new Option('학사', '학사');
                document.ExpertApp.SchDegree_1.options[2] = new Option('석사', '석사');
                document.ExpertApp.SchDegree_1.options[3] = new Option('박사', '박사');
            }
            if (obj_num == 2)
            {
                document.ExpertApp.SchDegree_2.clear;
                document.ExpertApp.SchDegree_2.options[0] = new Option('=선택=', '');
                document.ExpertApp.SchDegree_2.options[1] = new Option('학사', '학사');
                document.ExpertApp.SchDegree_2.options[2] = new Option('석사', '석사');
                document.ExpertApp.SchDegree_2.options[3] = new Option('박사', '박사');
            }
            if (obj_num == 3)
            {
                document.ExpertApp.SchDegree_3.clear;
                document.ExpertApp.SchDegree_3.options[0] = new Option('=선택=', '');
                document.ExpertApp.SchDegree_3.options[1] = new Option('학사', '학사');
                document.ExpertApp.SchDegree_3.options[2] = new Option('석사', '석사');
                document.ExpertApp.SchDegree_3.options[3] = new Option('박사', '박사');
            }
        }
        if (obj.value == "대학원")
        {
            if (obj_num == 1)
            {
                document.ExpertApp.SchDegree_1.clear;
                document.ExpertApp.SchDegree_1.options[0] = new Option('=선택=', '');
                document.ExpertApp.SchDegree_1.options[1] = new Option('석사', '석사');
                document.ExpertApp.SchDegree_1.options[2] = new Option('박사', '박사');
                document.ExpertApp.SchDegree_1.options[3] = null;
            }
            if (obj_num == 2)
            {
                document.ExpertApp.SchDegree_2.clear;
                document.ExpertApp.SchDegree_2.options[0] = new Option('=선택=', '');
                document.ExpertApp.SchDegree_2.options[1] = new Option('석사', '석사');
                document.ExpertApp.SchDegree_2.options[2] = new Option('박사', '박사');
                document.ExpertApp.SchDegree_2.options[3] = null;
            }
            if (obj_num == 3)
            {
                document.ExpertApp.SchDegree_3.clear;
                document.ExpertApp.SchDegree_3.options[0] = new Option('=선택=', '');
                document.ExpertApp.SchDegree_3.options[1] = new Option('석사', '석사');
                document.ExpertApp.SchDegree_3.options[2] = new Option('박사', '박사');
                document.ExpertApp.SchDegree_3.options[3] = null;
            }
        }
    }

    function togglefaq(currfaq,fm) {

        if (document.all) {
            var thisfaq
            var faqs = "document.all." + currfaq + ".style"
            thisfaq = eval(faqs)
            if (fm.value == "기타") {
                thisfaq.display = "block"
            }
            else {
                thisfaq.display = "none"
            }
            return false
        }
        else {
            return true
        }
    }

    function submit_it()
    {
        var str;
        if(ExpertApp.select1_fir.value==""){
            //alert("지원과정(1순위)을 선택하여 주십시요");
            alert("지원과정을 선택하세요.");
//			ExpertApp.select1_fir.focus();
            return;
        }
        /*
                if(ExpertApp.select1_sec.value==""){
                    alert("지원과정(2순위)을 선택하여 주십시요");
        //			ExpertApp.select1_sec.focus();
                    return;
                    }
        */
        if(ExpertApp.select2.value==""){
            //alert("지원종류를 선택하여 주십시요");
            alert("지원종류를 선택하세요.");
            ExpertApp.select2.focus();
            return;
        }
        /*
        if(ExpertApp.select3.value==""){
            alert("전형과목을 선택하여 주십시요");
            ExpertApp.select3.focus();
            return;
            }
        */
        /*if(ExpertApp.select4.value==""){*/
        if(ExpertApp.select4.value=="0"){
            //alert("전형일시를 선택하여 주십시요");
            alert("개강일자를 선택하세요.");
            ExpertApp.select4.focus();
            return;
        }

        if(ExpertApp.DteFr_0.value.length<1 || ExpertApp.DteEnd_0.value.length<1 ){
            //alert("학력을 입력하여 주십시요")
            alert("학력을 입력하세요.");
            ExpertApp.DteFr_0.focus();
            return;
        }

        if(ExpertApp.DteFr_0.value.length<4 || ExpertApp.DteEnd_0.value.length<4 ){
            //alert("년도는 4자리로 입력하여 주십시요(YYYY)")
            alert("년도는 4자리로 입력하세요.(YYYY)");
            ExpertApp.DteFr_0.focus();
            return;
        }

        if(ExpertApp.School_0.value.length<1 && ExpertApp.schoolclassify_0.value=="고등학교"){
            //alert("학력정보를 확인하여 주십시요")
            alert("학력정보를 확인해주세요.");
            ExpertApp.School_0.focus();
            return;
        }

        if(ExpertApp.Bigo_0.value==""){
            //alert("학력정보를 확인하여 주십시요")
            alert("학력정보를 확인해주세요.");
            ExpertApp.Bigo_0.focus();
            return;
        }
        /*
        str="";
        for(i=0; i<6; i++){
            if(ExpertApp.hope(i).checked == true)
                str=str+"Y"
        }
        if(str==""){
            alert(" 수료후 계획을 선택하여 주십시요 ");
            ExpertApp.hope(0).focus();
            return;
        }
        */
        if(ExpertApp.hopetext.value.length<2){
            //alert("수료후 계획을 입력하여 주십시요.")
            alert("수료후 계획을 입력하세요.");
            ExpertApp.hopetext.focus();
            return;
        }

//		if(ExpertApp.hopetext.value.length>1000){
//			alert("수료후 계획은 1000자까지 적을 수 있습니다.")
//			ExpertApp.hopetext.focus();
//			return;
//		}

        if(ExpertApp.smoke.value.length<1){
            //alert("하루 흡연량을 선택하여 주십시요.")
            alert("흡연여부를 선택하세요.");
            ExpertApp.hopetext.focus();
            return;
        }

        document.ExpertApp.submit();


//  return true;
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

    function cancel()
    {
        alert("과정 지원을 취소하셨습니다.")
        location.href="/"
    }

    <%--function SelectDateCheck()--%>
    <%--{--%>
        <%--if(document.ExpertApp.totselectdate.value=='0'){--%>
            <%--<%	if day(date)<7 then --%>
                    <%--showdate=right(DateAdd("d",+1,date),2)&"일"--%>
                <%--else--%>
                    <%--showdate=mid(dateadd("m",+1,date),6,2)&"월" --%>
                <%--end if%>--%>
            <%--alert(" 다음 전형일시는 <%=showdate%>부터 게시됩니다     ");--%>
        <%--}--%>
    <%--}--%>

    function SelectSubject() {
        var s, i;
        var fm = document.ExpertApp.select1_fir;
        s = document.ExpertApp.select4.options.length;
        for (i = s; i > 0; i--) {
            document.ExpertApp.select4.options[i] = null;
        }

        /////////////////////////////////////////////////////////////////////////////////////////
        // 기업 맞춤교육인 경우 ->  전형일을 따로 설정해준다.  								   //
        /////////////////////////////////////////////////////////////////////////////////////////
        /*
        if (document.ExpertApp.select1_fir.value == "KUKA17_BD") {
            // KUKA17_BD : JAVA 기반 빅데이터 처리를 위한 분산정보시스템 개발자 양성과정
            document.ExpertApp.select4.options[0] = new Option('==선택==', '0');
            document.ExpertApp.select4.options[1] = new Option('2017-12-18-08:50', '2017-12-18-08:50');
            document.ExpertApp.select4.options[2] = new Option('2018-01-15-08:50', '2018-01-15-08:50');
            ExpertApp.select4.options[0].selected = true;
        } else if (document.ExpertApp.select1_fir.value == "KUKA17_RD") {
            // KUKA17_RD	: 라즈베리파이를 활용한 IoT임베디드 시스템 개발자 양성과정
            document.ExpertApp.select4.options[0] = new Option('==선택==', '0');
            document.ExpertApp.select4.options[1] = new Option('2017-12-26-08:50', '2017-12-26-08:50');
            ExpertApp.select4.options[0].selected = true;
        }
        */

        /*
        } else if (document.ExpertApp.select1_fir.value == "KUKA17_ED") {
            // KUKA17_ED	C기반 Embedded Linux 시스템 고급인력 양성과정
            document.ExpertApp.select4.options[0] = new Option('==선택==', '0');
            document.ExpertApp.select4.options[1] = new Option('2017-10-11-08:50', '2017-10-11-08:50');
            ExpertApp.select4.options[1].selected = true;
        }

        else if (document.ExpertApp.select1_fir.value == "KUKA16_ED") {
            // KUKA16_ED	C기반 Embedded Linux 시스템 개발자 양성과정
            //document.ExpertApp.select4.options[1] = new Option('2016-10-04-08:50', '2016-10-04-08:50');
            document.ExpertApp.select4.options[0] = new Option('==선택==', '0');
            document.ExpertApp.select4.options[1] = new Option('2017-01-23-08:50', '2017-01-23-08:50');
            ExpertApp.select4.options[1].selected = true;
        } else if (document.ExpertApp.select1_fir.value == "KUKA16_ID") {
            // KUKA16_ID	IoT 디바이스 개발을 위한 임베디드 시스템 개발자 양성과정
            //document.ExpertApp.select4.options[1] = new Option('2016-08-01-08:50', '2016-08-01-08:50');
            document.ExpertApp.select4.options[0] = new Option('==선택==', '0');
            document.ExpertApp.select4.options[1] = new Option('2017-04-03-08:50', '2017-04-03-08:50');
            ExpertApp.select4.options[1].selected = true;
        } else if (document.ExpertApp.select1_fir.value == "KUKA16_JD") {
            // KUKA16_JD	JAVA Enterprise 시스템 개발자 양성과정
            //document.ExpertApp.select4.options[1] = new Option('2016-11-14-08:50', '2016-11-14-08:50');
            document.ExpertApp.select4.options[0] = new Option('==선택==', '0');
            document.ExpertApp.select4.options[1] = new Option('2017-05-10-08:50', '2017-05-10-08:50');
            ExpertApp.select4.options[1].selected = true;
        } else if (document.ExpertApp.select1_fir.value == "KUKA16_SD") {
            // KUKA16_SD	JAVA Spring Framework을 활용한 모바일 앱 개발자 양성과정
            //document.ExpertApp.select4.options[1] = new Option('2016-12-01-08:50', '2016-12-01-08:50');
            document.ExpertApp.select4.options[0] = new Option('==선택==', '0');
            document.ExpertApp.select4.options[1] = new Option('2016-12-26-08:50', '2016-12-26-08:50');
            document.ExpertApp.select4.options[2] = new Option('2017-03-06-08:50', '2017-03-06-08:50');
            ExpertApp.select4.options[1].selected = true;
        } else if (document.ExpertApp.select1_fir.value == "KUKA16_MD") {
            // KUKA16_MD	JAVA Web & Mobile 개발자 양성과정
            //document.ExpertApp.select4.options[1] = new Option('2016-09-05-08:50', '2016-09-05-08:50');
            document.ExpertApp.select4.options[0] = new Option('==선택==', '0');
            document.ExpertApp.select4.options[1] = new Option('2017-02-01-08:50', '2017-02-01-08:50');
            ExpertApp.select4.options[1].selected = true;
        } else if (document.ExpertApp.select1_fir.value == "KUKA16_DD") {
            // KUKA16_DD	JAVA 기반 DataBase 개발자 양성과정
            document.ExpertApp.select4.options[0] = new Option('==선택==', '0');
            document.ExpertApp.select4.options[1] = new Option('2017-03-06-08:50', '2017-03-06-08:50');
            document.ExpertApp.select4.options[2] = new Option('2017-04-24-08:50', '2017-04-24-08:50');
            ExpertApp.select4.options[1].selected = true;
        } else if (document.ExpertApp.select1_fir.value == "KUKA16_BD") {
            // KUKA16_BD	JAVA 기반 빅데이터 처리를 위한 분산정보시스템 개발자 양성과정
            //document.ExpertApp.select4.options[1] = new Option('2016-08-01-08:50', '2016-08-01-08:50');
            //document.ExpertApp.select4.options[1] = new Option('2016-12-19-08:50', '2016-12-19-08:50');
            document.ExpertApp.select4.options[0] = new Option('==선택==', '0');
            document.ExpertApp.select4.options[1] = new Option('2016-12-26-08:50', '2016-12-26-08:50');
            ExpertApp.select4.options[1].selected = true;
        } else if (document.ExpertApp.select1_fir.value == "KUKA16_WD") {
            // KUKA16_WD	JAVA 기반 웹표준 웹프로그래밍 개발자 양성과정
            //document.ExpertApp.select4.options[1] = new Option('2016-09-05-08:50', '2016-09-05-08:50');
            //document.ExpertApp.select4.options[1] = new Option('2017-01-02-08:50', '2017-01-02-08:50');
            document.ExpertApp.select4.options[0] = new Option('==선택==', '0');
            ExpertApp.select4.options[0].selected = true;
        }
        */
        /*
        if ((document.ExpertApp.select1_fir.value == "kukka14_EX") ||  (document.ExpertApp.select1_fir.value == "BITcom") ||  (document.ExpertApp.select1_fir.value == "exsoft") ||  (document.ExpertApp.select1_fir.value == "parmi_CX") || (document.ExpertApp.select1_fir.value == "Auros_CX") || (document.ExpertApp.select1_fir.value == "hynix") || (document.ExpertApp.select1_fir.value == "idis_MX") ||  (document.ExpertApp.select1_fir.value == "netcruz_CX")
        || (document.ExpertApp.select1_fir.value == "avad_JX") ||  (document.ExpertApp.select1_fir.value == "marine_EX")|| (document.ExpertApp.select1_fir.value == "EX_pulsus")
        || (document.ExpertApp.select1_fir.value == "soltronix")|| (document.ExpertApp.select1_fir.value == "hubt_EX")
        || (document.ExpertApp.select1_fir.value == "blue_EX") || (document.ExpertApp.select1_fir.value == "xn_EX")  || (document.ExpertApp.select1_fir.value == "Duzon_OX") || (document.ExpertApp.select1_fir.value == "navi_ms") || (document.ExpertApp.select1_fir.value == "webcash_jx") ||(document.ExpertApp.select1_fir.value == "eluon_NX")||(document.ExpertApp.select1_fir.value == "intek_EX") || (document.ExpertApp.select1_fir.value == "SGA_CX")
        || (document.ExpertApp.select1_fir.value == "MarkAny_CX") || (document.ExpertApp.select1_fir.value == "Oulim_NX") ||  (document.ExpertApp.select1_fir.value == "kisan_EX")  || (document.ExpertApp.select1_fir.value == "Inca_CX") ||(document.ExpertApp.select1_fir.value == "KOVI_CX") || (document.ExpertApp.select1_fir.value == "RMI_CX") || (document.ExpertApp.select1_fir.value == "netvill_JX") || (document.ExpertApp.select1_fir.value == "top_CX")
        || (document.ExpertApp.select1_fir.value == "pix_CX") || (document.ExpertApp.select1_fir.value == "ivis_EX")
        || (document.ExpertApp.select1_fir.value == "ostem_CX")|| (document.ExpertApp.select1_fir.value == "Modim_CX")
        || (document.ExpertApp.select1_fir.value == "future_EX")
        )
        {
            document.ExpertApp.select4.options[0] = new Option('==선택==', '0');
            document.ExpertApp.select4.options[1] = new Option('2015-08-03-09:00', '2015-08-03-09:00')
            ExpertApp.select4.options[1].selected = true;
        }
        else  if (document.ExpertApp.select1_fir.value == "kukka14_JX")
        {
            document.ExpertApp.select4.options[0] = new Option('==선택==', '0');
            document.ExpertApp.select4.options[1] = new Option('2015-12-28-09:00', '2015-12-28-09:00')
            ExpertApp.select4.options[1].selected = true;
        }
        else  if  (document.ExpertApp.select1_fir.value == "kukka14_OX")
        {
            document.ExpertApp.select4.options[0] = new Option('==선택==', '0');
            document.ExpertApp.select4.options[1] = new Option('2015-07-13-09:00', '2015-07-13-09:00');
            ExpertApp.select4.options[1].selected = true;

        }
        else
        */

        //
        //
        //     if( fm.value=='kukka14_OX' || fm.value=='parmi_CX' || fm.value=='netcruz_CX' || fm.value=='obzen_OX' || fm.value=='Modim_CX' ||  fm.value=='RMI_CX' || fm.value=='hubt_EX'  || fm.value=='hynix' || fm.value=='xn_EX'  || fm.value=='marine_EX'  || fm.value=='dev_EX' || fm.value=='mark_CX' || fm.value=='navi_ms' || fm.value=='SGA_CX'  ||fm.value=='BITcom' || fm.value=='Duzon_OX' || fm.value=='KOVI_CX' || fm.value=='MarkAny_CX' || fm.value=='Semicx_CX' || fm.value=='top_CX' || fm.value=='future_EX'|| fm.value=='pix_CX'|| fm.value=='ivis_EX'
        //         || fm.value=='Inca_CX'|| fm.value=='ostem_CX')
        //     {
        //         ExpertApp.select3.disabled=false
        //         ExpertApp.select3.length =3;
        //         ExpertApp.select3.options[0].text = "==선택==";
        //         ExpertApp.select3.options[0].value = "";
        //
        //         ExpertApp.select3.options[1].text = "C";
        //         ExpertApp.select3.options[1].value = "C";
        //
        //         ExpertApp.select3.options[2].text = "C++";
        //         ExpertApp.select3.options[2].value = "C++";
        //
        //         ExpertApp.select3.options[0].selected = true;
        //         return true;}
        //
        //
        //     if(fm.value=='uangel_CX' || fm.value=='kukka14_EX' ||fm.value=='eluon_NX' ||fm.value=='Oulim_NX'|| fm.value=='blue_EX'  || fm.value=='kisan_EX'  ){
        //         ExpertApp.select3.disabled=false
        //         ExpertApp.select3.length =1;
        //         ExpertApp.select3.options[0].text = "C";
        //         ExpertApp.select3.options[0].value = "C";
        //         ExpertApp.select3.options[0].selected = true;
        //         return true;
        //     }
        //
        //     if(fm.value=='kukka16_JX' || fm.value=='kukka16_NET' || fm.value=='kukka16_IoT' || fm.value=='exsoft' ||  fm.value=='kukka14_JX' ||  fm.value=='avad_JX' ||  fm.value=='soltronix' ||  fm.value=='NTS_JX' || fm.value=='webcash_jx'||   fm.value=='White'|| fm.value=='netvill_JX')  {
        //         ExpertApp.select3.disabled=false
        //         ExpertApp.select3.length =1;
        //         ExpertApp.select3.options[0].text = "Java";
        //         ExpertApp.select3.options[0].value = "Java";
        //         ExpertApp.select3.options[0].selected = true;
        //         return true;
        //     }
        //     if(  fm.value=='wise_OX'  ){
        //         ExpertApp.select3.disabled=false
        //         ExpertApp.select3.length =1;
        //         ExpertApp.select3.options[0].text = "C++";
        //         ExpertApp.select3.options[0].value = "C++";
        //         ExpertApp.select3.options[0].selected = true;
        //         return true;
        //     }
        //
        //     if( fm.value=='Simplex_JX' ){
        //         ExpertApp.select3.disabled=false
        //         ExpertApp.select3.length =4;
        //         ExpertApp.select3.options[0].text = "==선택==";
        //         ExpertApp.select3.options[0].value = "";
        //
        //         ExpertApp.select3.options[1].text = "C";
        //         ExpertApp.select3.options[1].value = "C";
        //
        //         ExpertApp.select3.options[2].text = "C++";
        //         ExpertApp.select3.options[2].value = "C++";
        //
        //         ExpertApp.select3.options[3].text = "Java";
        //         ExpertApp.select3.options[3].value = "Java";
        //         ExpertApp.select3.options[0].selected = true;
        //         return true;
        //     }
        //
        //
        //     if(fm.value==''){
        //         ExpertApp.select3.disabled=false
        //         ExpertApp.select3.length =1;
        //         ExpertApp.select3.options[0].text = "지원과정 선택";
        //         ExpertApp.select3.options[0].value = "";
        //         ExpertApp.select3.options[0].selected = true;
        //         return true;
        //     }
        // }
    }
    function  chklen(fm,str)
    {
        var		i = 0;
        var		One_Char = "";
        var		TString = fm.value;
        var		TString2 = "";
        var		TByte = 0;

        if(str=="학위논문"){
            if(fm.value.length>100){
                alert(str + "은(는)  최대 100자까지 적을 수 있습니다")
                event.returnValue=false;
            }
            else
            {
                event.returnValue=true;
            }
        }
        else{
            if(fm.value.length>1000){
                alert(str + "은(는)  최대 1000자까지 적을 수 있습니다")
                event.returnValue=false;
            }
            else
            {
                event.returnValue=true;
            }
        }
    }

    // 함수 : chklen_plan(fm) ### 수료후 계획 ###
    function  chklen_plan(fm)
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
            alert("수료후 계획은 최대 250자까지 적을 수 있습니다.\n초과된 내용은 자동으로 삭제됩니다.\n\n현재 총 " + TByte + " 글자입니다.")
            TString2 = TString.substr(0, TString2_Length);
            fm.value = TString2;
            fm.focus();
        }
    }

    //-->
</script>