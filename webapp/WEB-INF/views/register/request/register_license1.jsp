<%
    Session.CodePage  = 949 '한글
    Response.CharSet  = "euc-kr" '한글
%>

<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->
<!--#include Virtual="/Include/common_function.asp"-->

<%
    Response.CacheControl = "no-cache"
    Response.AddHeader "Pragma", "no-cache"
    Response.Expires = -1

    Studid = TRIM(session("Studid"))
    idx = TRIM(request("idx"))

    If idx="" Then idx=0

    'response.write "Studid:"&Studid&"<br>"

    if Studid = "" OR isEmpty(Studid) OR isNULL(Studid) then
    call alertMsgGoURL ("로그인 정보가 없습니다. \n다시 로그인해 주세요.", "http://www.bitacademy.com/Member/login.asp?return_url=http://www.bitacademy.com/Register/Request/register_license1.asp")
    response.end
    end if

    Set Dbcon = Server.CreateObject("ADODB.Connection")
    Dbcon.Open Con_bit_db

    SQL = "SELECT * FROM Application WHERE StudID="&Studid&" AND idx = "&idx
    Set Rs = Dbcon.Execute(SQL)


    if Rs.Eof or Rs.bof Then
    isAppYN = "N"
    Else
    isAppYN ="Y"
    app_YearMonth = trim(Rs("YearMonth"))
    app_CourseID = trim(Rs("CourseID"))
    app_SecCourseID = trim(Rs("SecCourseID"))
    app_SelectStat = trim(Rs("SelectStat"))
    app_IntervStat = trim(Rs("IntervStat"))
    app_AppliKind = trim(Rs("AppliKind"))
    app_AppliType = trim(Rs("AppliType"))
    app_SelectDateTime = trim(Rs("SelectDateTime"))
    app_SelectSubject = trim(Rs("SelectSubject"))
    app_SelectScore = trim(Rs("SelectScore"))
    app_SelectResult = trim(Rs("SelectResult"))
    app_IntervOpinion = trim(Rs("IntervOpinion"))
    app_Hope = trim(Rs("Hope"))
    app_HopeText = trim(Rs("HopeText"))
    app_AppliWayID = trim(Rs("AppliWayID"))
    app_AppliMotive = trim(Rs("AppliMotive"))
    app_AppWayEtcName = trim(Rs("AppWayEtcName"))
    app_AppWayEtcPosition = trim(Rs("AppWayEtcPosition"))
    app_AppWayEtcRelation = trim(Rs("AppWayEtcRelation"))
    app_ReceiptStat = trim(Rs("ReceiptStat"))
    app_ReceiptDate = trim(Rs("ReceiptDate"))
    app_ReceiptMethodID = trim(Rs("ReceiptMethodID"))
    app_ReceiptAmount = trim(Rs("ReceiptAmount"))
    app_CardReceiptStat = trim(Rs("CardReceiptStat"))
    app_CardReceiptAmount= trim(Rs("CardReceiptAmount"))
    app_ReceiptNote = trim(Rs("ReceiptNote"))
    app_Note = trim(Rs("Note"))
    app_IsUse = trim(Rs("IsUse"))
    app_InterNo = trim(Rs("InterNo"))
    app_InterNo1 = trim(Rs("InterNo1"))
    app_InterNo2 = trim(Rs("InterNo2"))
    app_InterNo3 = trim(Rs("InterNo3"))
    app_ExecuteCheck = trim(Rs("ExecuteCheck"))
    app_SelectReSubject = trim(Rs("SelectReSubject"))
    app_SelectReScore = trim(Rs("SelectReScore"))
    app_PrintFlag = trim(Rs("PrintFlag"))
    app_AppFrom = trim(Rs("AppFrom"))
    app_AppFromFlag = trim(Rs("AppFromFlag"))
    End if

    Rs.close
    Set Rs = Nothing

%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel= "shortcut icon" href="/images/favicon.ico">
    <!-- #include virtual="/Include/Meta.asp"-->
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>비트교육센터</title>
    <!-- #include virtual="/Include/ContentStyle.asp"-->
    <!-- #include virtual="/Include/Script.asp"-->
    <!--#include virtual="/Register/Request/register_license_script1.asp"-->

    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
    <link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
    <link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
    <!-- #include virtual="/Include/HeaderScript1709.asp"-->
    <script type="text/javascript">
        var schoolNameNumber; // [학력등록정보] 0 : 첫째칸, 1 : 둘째칸, 2 : 셋째칸, 3 : 넷째칸.

        $(document).ready(function(){
            <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
            <!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
            $(".snb_1709 a.newdepth1").eq(0).addClass("on");								// 신규지원
            $(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// 신규지원SUB OPEN
            $(".snb_1709 .newdepth2_wrap.no1 .newdepth2").eq(8).addClass("on");  	// BSPM(비트SW프로그래밍 자격증)

            $('.myBlurAll').on('click', function() {
                $('.myPopup').css('display','none');
                $('.myBlurAll').css('display','none');
                $('body').css('overflow','auto');
            });

            $(document).on('click', '#aClose1', function(e) {
                e.preventDefault();

                $('.myPopup').css('display','none');
                $('.myBlurAll').css('display','none');
                $('body').css('overflow','auto');
            });
        });

        function OnSelectChangeSchool(num) {
            // selectSchool 변수에 제대로 된 값을 넣어준다.

            if($("#selectSchool0").val() == "고등학교" && num==0) {
                var strPlus = '&schoolType=high';
                ajaxLoad('#myBox1', '', '/Popup/SchoolSearchPopupInclude.asp?schoolNameNumber=0' + strPlus );
                schoolNameNumber = 0;
            } else if(($("#selectSchool1").val() == "대학교" || $("#selectSchool1").val() == "대학" || $("#selectSchool1").val() == "대학원") && num==1) {
                var strPlus = '&schoolType=univ';
                ajaxLoad('#myBox1', '', '/Popup/SchoolSearchPopupInclude.asp?schoolNameNumber=1' + strPlus );
                schoolNameNumber = 1;
            } else if(($("#selectSchool2").val() == "대학교" || $("#selectSchool2").val() == "대학" || $("#selectSchool2").val() == "대학원") && num==2) {
                var strPlus = '&schoolType=univ';
                ajaxLoad('#myBox1', '', '/Popup/SchoolSearchPopupInclude.asp?schoolNameNumber=2' + strPlus );
                schoolNameNumber = 2;
            } else if(($("#selectSchool3").val() == "대학교" || $("#selectSchool3").val() == "대학" || $("#selectSchool3").val() == "대학원") && num==3) {
                var strPlus = '&schoolType=univ';
                ajaxLoad('#myBox1', '', '/Popup/SchoolSearchPopupInclude.asp?schoolNameNumber=3' + strPlus );
                schoolNameNumber = 3;
            } else {
                return;
            }
            //e.preventDefault();
            $(".myPopup").css('display','block');
            $(".myBlurAll").css('display','block');
        }

        function submitCheck() {
            if ( $("#itemInfo_01").val()=='' ) {
                alert("지원과정을 선택해주세요.");
                $("#itemInfo_01").focus();
            } else if($("#inputSchoolName0").val().trim()=='' && $("#inputSchoolName1").val().trim()=='') {
                alert("학력등록정보에서 학교명을 입력해주세요.");
                $("#inputSchoolName0").focus();
            } else if( ($("#DteFr_0").val()=='' || $("#DayFr_0").val()=='' || $("#DteEnd_0").val()=='' || $("#DayEnd_0").val()=='') &&
                ($("#DteFr_1").val()=='' || $("#DayFr_1").val()=='' || $("#DteEnd_1").val()=='' || $("#DayEnd_1").val()=='') ) {
                alert("학력등록정보에서 기간을 입력해주세요.");
                $("#DteFr_0").focus();
            } else {
                document.LicenseApp.submit();
            }
        }
    </script>
    <style>
        .myPopup {
            position:fixed;
            left:45%;
            top:15%;

            opacity:1;
            z-index:10000;

            background-color:#fff;
            font-family:'Nanum Gothic Bold';
            font-weight:800;

            width:315px;
            height:70%;
            padding:30px;
            border-radius:1px;
            box-shadow: 0 0 80px rgba(0,0,0,0.99);

            overflow: scroll;
        }
        .myBlurAll {
            position:fixed;
            left:0;
            top:0;
            width:100%;
            height:100%;

            opacity:0.49;
            z-index:9999;
            background-color:#000;
        }
        table.padding2px tr td {
            padding-left:2px;
            padding-right:2px;
            font-size:13px;
        }
    </style>
    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
<script type="text/javascript">
    // (Added : 2017-12-22-YG)
    function onChangeSelect1DB(value) {
        iSelectDay.location = "/Register/Request/register_common_selectdate_license.asp?courseid=" + value;
        SelectSubjectLicense(this);
    }
</script>
<iframe id="iSelectDay" name="iSelectDay" height="0" width="0"></iframe>
<form name="LicenseApp" method="POST" action="/Register/Request/register_license_insertMMS.asp">
    <input type="hidden" name="idx" value="<%=idx%>">
    <input type="hidden" name="isAppYN" value="<%=isAppYN%>">
    <div id="Wrapper">
        <!-- Header_Wrap -->
        <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
        <!-- //Header_Wrap -->

        <div id="Container_Wrap">
            <div id="Content_Wrap">
                <!-- SNB_Wrap-->
                <!-- #include virtual = "/Include/SNB_Register_1709.asp"-->
                <!-- //SNB_Wrap-->

                <div id="Content">
                    <div class="hGroup1709">
                        <p>
                            <img src="/Images/Icons/icn_Home.png"/>
                            <img src="/Images/Icons/icn_ArrowTriangleRight.png"/>수강신청
                            <img src="/Images/Icons/icn_ArrowTriangleRight.png"/>신규지원
                        </p>
                        <h4>BSPM (비트SW프로그래밍 자격증)</h4>
                    </div>

                    <div class="con_wrap1709">
                        <section class="section">
                            <div class="section_header">
                                <h5>신규지원</h5>
                            </div>
                            <div class="divTable">
                                <table>
                                    <caption>비트 SW 프로그래밍 자격증과정</caption>
                                    <colgroup>
                                        <col style="width:20%">
                                        <col style="width:80%">
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                        <th class="darker c" scope="row">
                                            <label for="itemInfo_01">지원과정</label>
                                        </th>
                                        <td colspan="3" class="l">
                                            <!--<select id="itemInfo_01" name="select1_fir"  onchange="return SelectSubjectLicense(this)" style="width:180px" >-->
                                            <select id="itemInfo_01" name="select1_fir"  onchange="return onChangeSelect1DB(this.value)" style="width:180px" >
                                                <option value="">====선택====</option>
                                                <%
                                                    SQL="SELECT CourseID,CourseName From   Course"
                                                    SQL=SQL &"   Where  Expertid =  '자격증' and key_word like 'open'"

                                                    Set Rs = Dbcon.Execute(SQL)

                                                    Rs.MoveFirst
                                                    DO While not Rs.EOF
                                                    If isAppYN="Y" AND app_CourseID = Trim(Rs("CourseID")) Then
                                                    Response.Write "<option value='"& Rs("CourseID") & "' selected>"
                                                    Else
                                                    Response.Write "<option value='"& Rs("CourseID") & "'>"
                                                    End If
                                                    Response.Write Rs("CourseName") & "</option>"
                                                    Rs.MoveNext
                                                    loop
                                                %>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr style="display:none;">
                                        <th class="darker c" scope="row">
                                            <label for="itemInfo_02">지원종류displaynone</label>
                                        </th>
                                        <td colspan="3" class="l">
                                            <select id="itemInfo_02" name="select2" style="width:140px">
                                                <option value='일반지원' <%If isAppYN="Y" AND app_AppliType = "일반지원" Then %>selected<%End if%>>일반지원</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr style="display:none;">
                                        <th class="darker c" scope="row">
                                            <label for="itemInfo_03">전형과목displaynone</label>
                                        </th>
                                        <td colspan="3" class="l">
                                            <select id="itemInfo_03" name="select3"  disabled>
                                                <option value="">지원과정 선택</option>
                                            </select>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th class="darker c" scope="row">
                                            <label for="itemInfo_04">시험일시</label>
                                        </th>
                                        <td class="l">
                                            <select id="itemInfo_04" name="select4" onclick="JavaScript:SelectDateCheck()" style="width150px">
                                                <option value="">=====선택=====</option>
                                                <%
                                                    '------------------------------------------------------------------------
                                                    'sql="select Studid From Application Where Studid="& Studid &" and AppliKind='직장인' and ReceiptStat<>'미납' and 'ReceiptStat<>'환불' and ReceiptStat<>''"

                                                    SQL="select Studid From Application Where Studid="& Studid &" and AppliKind='직장인' and ReceiptStat = '완납' and ReceiptStat<>'환불' and selectResult = '합격' and ReceiptStat<>''"

                                                    '직장인을 한번 들었던 놈인지 아닌지...체크한다.
                                                    'ReceipStat -> 등록이 완료 되어는지...

                                                    Set Rs = Dbcon.Execute(SQL)
                                                    ExistWork = Rs.recordcount
                                                    Rs.close
                                                    '------------------------------------------------------------------------

                                                    '쿼리 조건 중에 9:00 인것.
                                                    'set hong = server.CreateObject("adodb.recordset")
                                                    'sql ="SELECT SelectDate From SelectDateTable Where right(SelectDate,5) = '9:00'"

                                                    'hong.Open sql, oConn

                                                    'NineoClock=oRS1.recordset
                                                    'oRS1.close

                                                    '---------------------------------------------
                                                    'set oRS3=server.CreateObject("adodb.recordset")
                                                    'sql ="SELECT SelectDate From SelectDateTable Where right(SelectDate,5) != '9:00'"

                                                    'oRS3.Open sql, oConn

                                                    '---------------------------------------------

                                                    'sql="select SelectDate From SelectDateTable Where S_Max > S_Current and selectdate like '"&left(date,7)&"%' and ExpertID='자격증' order by selectdate"
                                                    '(장후녕) 날짜 제한이 걸려있는 부분을 삭제함. (selectdate like '%left(date,7)%')
                                                    SQL="select SelectDate From SelectDateTable Where S_Max > S_Current and ExpertID='양성과정' order by selectdate"
                                                    '월을 기준으로 같은 월에 지원했는지 확인한다. (tcoms에서 지원을 막고 풀고)

                                                    Set Rs = Dbcon.Execute(SQL)
                                                    totselectDate = Rs.recordcount

                                                    '---------------------------------------------

                                                    '첫타임이 9시일 경우 과거 직장인 반을 들었거나 현재 듣고 있는 사람만 신청할 수 있다

                                                    if not Rs.BOF and Rs.EOF then'직장인은 직장인 9시꺼만 보라는 소리입니다.

                                                    if mid(Rs("SelectDate"),12,5)="08:00" then

                                                    if ExistWork > 0 then  ' 직장인을 한번이상 들었던 놈인지 아닌지 체크
                                                    Response.Write "<option value='"& Rs("SelectDate")&"'>"'selectDate = 전형 년-월-일
                                                    Response.Write Rs("SelectDate") & "</option>"
                                                    end if

                                                    else
                                                    Response.Write "<option value='"& Rs("SelectDate")&"'>"
                                                    Response.Write Rs("SelectDate") & "</option>"
                                                    end if
                                                    Rs.movenext

                                                    end if

                                                    '---------------------------------------------
                                                    do while not Rs.EOF


                                                    'Response.Write "<option value='"& oRS1("SelectDate")&"'>"
                                                    'Response.Write oRS1("SelectDate") & "</option>"

                                                    if mid(Rs("SelectDate"),12,5)="08:00" then

                                                    if ExistWork > 0 then  ' 직장인을 한번이상 들었던 놈인지 아닌지 체크
                                                    Response.Write "<option value='"& Rs("SelectDate")&"'>"'selectDate = 전형 년-월-일
                                                    Response.Write Rs("SelectDate") & "</option>"
                                                    end if

                                                    else
                                                    Response.Write "<option value='"& Rs("SelectDate")&"'>"
                                                    Response.Write Rs("SelectDate") & "</option>"
                                                    end if

                                                    Rs.movenext
                                                    i=i+1

                                                    loop
                                                    Rs.Close
                                                %>
                                                <%

                                                    SQL="Select NameHan, NameEng,Sex, StudResnum, Email,HomePage,PostNum,Address,NowPostNum,NowAddress,TelePhone,HandPhone,Smoke,Paper "
                                                    SQL=SQL&" From Member																					"&vbcrlf
                                                    SQL=SQL&" Where StudID = "&Studid&"															"&vbcrlf

                                                    Set Rs = Dbcon.Execute(SQL)

                                                    StudResnum = TRIM(Rs("StudResnum"))
                                                    StudResnum1 = left(StudResnum, 6)
                                                    StudResnum2 = right(StudResnum, 7)

                                                    if Rs("TelePhone") = "" then
                                                    redim tel(3)
                                                    Tel(0) = ""
                                                    Tel(1) = ""
                                                    Tel(2) = ""
                                                    else
                                                    Tel=split(Rs("TelePhone"),"-")
                                                    if ubound(tel)<2 then
                                                    redim tel(3)
                                                    tel(0) = ""
                                                    tel(1) = ""
                                                    tel(2) = ""
                                                    end if
                                                    end if

                                                    if Rs("HandPhone") = "" then
                                                    redim hand(3)
                                                    Hand(0)=""
                                                    Hand(1)=""
                                                    Hand(2)=""
                                                    else
                                                    Hand=split(Rs("HandPhone"),"-")
                                                    if ubound(Hand)<2 then
                                                    redim Hand(3)
                                                    Hand(0)=""
                                                    Hand(1)=""
                                                    Hand(2)=""
                                                    end if
                                                    end if
                                                    Paper=replace(Rs("Paper"),"<br>",chr(13)&chr(10))
                                                    Smoke=Rs("Smoke")
                                                %>
                                            </select>
                                            <input type=hidden value="<%=totSelectDate%>" name="totselectdate">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="darker c" scope="row">이름</th>
                                        <td colspan="3" class="l"><%=Rs("NameHan")%></td>
                                    </tr>
                                    <tr>
                                        <th class="darker c" scope="row">영문</th>
                                        <td colspan="3" class="l"><%=Rs("NameEng")%></td>
                                    </tr>
                                    <input type="hidden" name="jumin1" value="<%=StudResnum1%>">
                                    <input type="hidden" name="jumin2" value="<%=StudResnum2%>">
                                    <tr>
                                        <th class="darker c" scope="row">생년월일</th>
                                        <td>19<%=Left(StudResnum1, 2)%>년 <%=Mid(StudResnum1, 3, 2)%>월 <%=right(StudResnum1, 2)%>일 생&nbsp;&nbsp;(만 :<%=Year(date)-Cint("19"&left(StudResnum1,2))%>세)</td>
                                    </tr>
                                    <tr>
                                        <th class="darker c" scope="row">E-Mail</th>
                                        <td colspan="3" class="l"><%=Rs("Email")%></td>
                                    </tr>

                                    <tr>
                                        <th class="darker c" scope="row">주소</th>
                                        <td colspan="3" class="l">
                                            <%=Rs("NowPostNum")%>&nbsp;&nbsp;<%=Rs("NowAddress")%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="darker c" scope="row">핸드폰</th>
                                        <td colspan="3" class="l"><%=Hand(0)%> - <%=Hand(1)%> - <%=Hand(2)%></td>
                                    </tr>
                                    <tr>
                                        <th class="darker c" scope="row">연락처</th>
                                        <td colspan="3" class="l"><%=Tel(0)%> - <%=Tel(1)%> - <%=Tel(2)%></td>
                                    </tr>
                                    </tbody>
                                </table>
                                <p class="mar_t10 brownTxt"> 위의 개인정보 항목들은 [개인정보수정] 에서 수정하시기 바랍니다. <a href="/Member/Member_modify.asp" title="개인정보수정" class="mar_l10 btnGreenBorder">개인정보수정</a></p>
                            </div>
                        </section>

                        <div id="myBox1" class="myPopup" style="display:none;">
                            <h2>
                                <span class="blueTxt" style="font-size:1.6em;">학교 검색</span>
                            </h2>
                            <br/><p>잠시만 기다려주세요.</p>
                        </div>
                        <div class="myBlurAll" style="display:none;"></div>

                        <section class="section mar_t20">
                            <h5>학력등록정보</h5>
                            <div class="divTable">
                                <table class="padding2px">
                                    <caption>Table - 학력등록정보</caption>
                                    <colgroup>
                                        <col style="width:28%">
                                        <col style="width:27%">
                                        <col style="width:15%">
                                        <col style="width:10%">
                                        <col style="width:10%">
                                        <col style="width:10%">
                                        <col style="width:10%">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th scope="col">기간</th>
                                        <th scope="col">학교</th>
                                        <th scope="col">소재지</th>
                                        <th scope="col">학위</th>
                                        <th scope="col">전공</th>
                                        <th scope="col">부전공</th>
                                        <th scope="col">졸업구분</th>
                                    </tr>
                                    </thead>
                                    <%

                                        SQL=""
                                        SQL="select * from MemberScholarshipBTC "
                                        SQL=SQL&"     Where  StudID="&Studid&" "&vbcrlf
                                        SQL=SQL&"     Order  By periodfr, Num "&vbcrlf

                                        Set Rs = Dbcon.Execute(SQL)

                                        EdCnt=Rs.RecordCount

                                        'Response.cookies("EdCnt")=EdCnt

                                        For i=0 TO 3

                                        If not Rs.EOF then

                                        YYFr=left(Rs("PeriodFr"),4)
                                        MMFr=Right(Rs("PeriodFr"),2)

                                        YYEnd=Left(Rs("PeriodTo"),4)
                                        MMEnd=Right(Rs("PeriodTo"),2)

                                        If i=0 then
                                        selectschool=right(Rs("School"),4) '고등학교/검정고시 구분
                                        Else
                                        selectschool=right(Rs("School"),3) '대학/대학교/대학원 구분
                                        end if

                                        if Rs("school")<>"" then
                                        School=left(Rs("School"),Instr(Rs("School"),selectschool)-1)'대학/대학교/대학원을 제외한 학교명
                                        else
                                        school=""
                                        end if
                                        location=Rs("Location")
                                        degree=Rs("Degree")
                                        major=Rs("Major")
                                        submajor=Rs("SubMajor")
                                        num=Rs("Num")
                                        bigo=Rs("stat")

                                        Rs.MoveNext

                                        else 'DB에 입력된 학력정보가 더이상 없을때 빈문서만 출력한다
                                        YYFr=""
                                        MMFr=""

                                        YYEnd=""
                                        MMEnd=""
                                        school=""
                                        selectschool=""
                                        location=""
                                        degree=""
                                        major=""
                                        submajor=""
                                        num=""
                                        bigo=""
                                        end if

                                    %>

                                    <tbody>
                                    <tr>
                                        <td>	<!-- 기간 -->
                                            <input name="DteFr_<%=i%>"  value="<%=YYFr%>" size=3  maxLength="4" onkeypress="onlyNumber();" onchange="JavaScript:chknext(this)" style="width:33px">
                                            년
                                            <select name="DayFr_<%=i%>" size="1">
                                                <option value=""></option>
                                                <%
                                                    For c=1 To 12
                                                    IF c < 10 then
                                                    Cnt= "0" & Cstr(c)
                                                    else
                                                    cnt=Cstr(c)
                                                    End if
                                                %>
                                                <option <%IF MMFr=Cnt then%> selected<%end if%> value=<%=cnt%>><%=Cnt%></option>
                                                <% Next %>
                                            </select>
                                            월
                                            ~

                                            <br/>
                                            <span>&nbsp; &nbsp; &nbsp; &nbsp;</span>

                                            <input name="DteEnd_<%=i%>"  size=3 value="<%=YYEnd%>" maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();" style="width:33px">
                                            년
                                            <select name="DayEnd_<%=i%>" size="1">
                                                <option value=""></option>
                                                <%
                                                    For c=1 To 12
                                                    IF c < 10 then
                                                    Cnt= "0" & Cstr(c)
                                                    else
                                                    cnt=Cstr(c)
                                                    End if
                                                %>
                                                <option  <%IF MMEnd=Cnt then%> selected<%end if%> value='<%=cnt%>'><%=Cnt%></option>
                                                <% Next %>
                                            </select>
                                            월
                                        </td>
                                        <td>		<!-- 학교 -->
                                            <input id="inputSchoolName<%=i%>" name="School_<%=i%>" value="<%=School%>" maxLength="14" size="9" style="width:70px; height:22px;">
                                            <select id="selectSchool<%=i%>" name=schoolclassify_<%=i%>   style="HEIGHT:22px; WIDTH:85px; background-color:#f7f7ff;" onChange="OnSelectChangeSchool(<%=i%>);">
                                                <option value="">선택</option>
                                                <% if i=0 then%>
                                                <option value="고등학교" <%if selectschool="고등학교" then%> selected<%end if%>>고등학교</option>
                                                <option value="검정고시" <%if selectschool="검정고시" then%> selected<%end if%>>검정고시</option>
                                                <%else%>
                                                <option value="대학" <%if selectschool="대학" then%> selected<%end if%>>대학</option>
                                                <option value="대학교"  <%if selectschool="대학교" then%> selected<%end if%>>대학교</option>
                                                <option value="대학원"  <%if selectschool="대학원" then%> selected<%end if%>>대학원</option>
                                                <%end if%>
                                            </select>
                                        </td>
                                        <td>		<!-- 소재지 -->
                                            <!--<input name="SchLocation_ < % = i % > " value=" < % = Location % > " maxLength="20" size="7" style="width:60px">-->
                                            <select name="SchLocation_<%=i%>" value="<%=Location%>" style="width:110px; HEIGHT:22px; background-color:#f7f7ff;">
                                                <option value="">선택</option>
                                                <option value="">서울특별시</option>
                                                <option value="">부산광역시</option>
                                                <option value="">인천광역시</option>
                                                <option value="">대구광역시</option>
                                                <option value="">광주광역시</option>
                                                <option value="">대전광역시</option>
                                                <option value="">울산광역시</option>
                                                <option value="">세종특별자치시</option>
                                                <option value="">경기도</option>
                                                <option value="">강원도</option>
                                                <option value="">충청남도</option>
                                                <option value="">충청북도</option>
                                                <option value="">경상북도</option>
                                                <option value="">경상남도</option>
                                                <option value="">전라북도</option>
                                                <option value="">전라남도</option>
                                                <option value="">제주특별자치도</option>

                                            </select>
                                        </td>
                                        <td>		<!-- 학위 -->
                                            <% if i=0 then%>
                                            <input type=hidden name='SchDegree_0' value="">
                                            <% else%>
                                            <select name="SchDegree_<%=i%>" style="HEIGHT: 22px;WIDTH: 55px">
                                                <option value="">선택</option>
                                                <option value="학사">전문학사</option>
                                                <option value="학사">학사</option>
                                                <option value="석사">석사</option>
                                                <option value="박사">박사</option>

                                            </select>
                                            <%end if%>
                                        </td>
                                        <td><input name="SchDepartment_<%=i%>" value="<%=Major%>" maxLength="25" size="8" style="width:60px"></td>
                                        <td>
                                            <input name="SchSubDepartment_<%=i%>" value="<%=SubMajor%>" maxLength="25" size="7" style="width:60px">
                                            <input type="hidden" name="Num_<%=i%>" value="<%=Num%>">
                                        </td>
                                        <td>
                                            <select name="Bigo_<%=i%>" style='HEIGHT: 22px;WIDTH: 55px'>
                                                <option value="">선택</option>
                                                <option value="졸업" <%if bigo="졸업" then%> selected<%end if%>>졸업</option>
                                                <option value="수료" <%if bigo="수료" then%> selected<%end if%>>수료</option>
                                                <%'		      <option value="휴학" <'%if bigo="휴학" then%'> selected<'%end if%'>>휴학</option>%>
                                                <option value="졸업예정" <%if bigo="졸업예정" then%> selected<%end if%>>졸업예정</option>
                                                <%'		      <option value="재학" <'%if bigo="재학" then%'> selected<'%end if%'>>재학</option>%>
                                                <option value="편입졸업" <%if bigo="편입졸업" then%> selected<%end if%>>편입졸업</option>
                                                <option value="중퇴" <%if bigo="중퇴" then%> selected<%end if%>>중퇴</option>
                                                <option value="자퇴" <%if bigo="자퇴" then%> selected<%end if%>>자퇴</option>
                                                <option value="0"> </option>
                                                <option value="-">▼재학▼</option>
                                                <option value="재1/1" <%if bigo="재1/1" then%> selected<%end if%>>1학년1학기</option>
                                                <option value="재1/2" <%if bigo="재1/2" then%> selected<%end if%>>1학년2학기</option>
                                                <option value="재2/1" <%if bigo="재2/1" then%> selected<%end if%>>2학년1학기</option>
                                                <option value="재2/2" <%if bigo="재2/2" then%> selected<%end if%>>2학년2학기</option>
                                                <option value="재3/1" <%if bigo="재3/1" then%> selected<%end if%>>3학년1학기</option>
                                                <option value="재3/2" <%if bigo="재3/2" then%> selected<%end if%>>3학년2학기</option>
                                                <option value="재4/1" <%if bigo="재4/1" then%> selected<%end if%>>4학년1학기</option>
                                                <option value="재4/2" <%if bigo="재4/2" then%> selected<%end if%>>4학년2학기</option>

                                                <option value="0"> </option>
                                                <option value="-">▼휴학▼</option>
                                                <option value="휴1/1" <%if bigo="휴1/1" then%> selected<%end if%>>1학년1학기</option>
                                                <option value="휴1/2" <%if bigo="휴1/2" then%> selected<%end if%>>1학년2학기</option>
                                                <option value="휴2/1" <%if bigo="휴2/1" then%> selected<%end if%>>2학년1학기</option>
                                                <option value="휴2/2" <%if bigo="휴2/2" then%> selected<%end if%>>2학년2학기</option>
                                                <option value="휴3/1" <%if bigo="휴3/1" then%> selected<%end if%>>3학년1학기</option>
                                                <option value="휴3/2" <%if bigo="휴3/2" then%> selected<%end if%>>3학년2학기</option>
                                                <option value="휴4/1" <%if bigo="휴4/1" then%> selected<%end if%>>4학년1학기</option>
                                                <option value="휴4/2" <%if bigo="휴4/2" then%> selected<%end if%>>4학년2학기</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <%Next
                                        Rs.close
                                        '**************************************************************************************************
                                    %>
                                    </tbody>
                                </table>
                            </div>
                        </section>

                        <div class="btn_wrap c">
                            <!-- 주석화 : <a href="javascript:submit_it()" title="" class="btn mid green1">지원하기</a>-->
                            <a href="javascript:submitCheck();" title="" class="btnGreenBorder big" style="width:64px;">지원하기</a>
                            <a href="/Register/register_newRequest.asp" title="" class="btnWhiteBorder big" style="width:64px;">취소</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer_Wrap -->
        <!-- #include virtual="/Include/FooterHTML1709.asp"-->
        <!-- //Footer_Wrap -->
    </div>
</form>
</body>
</html>
