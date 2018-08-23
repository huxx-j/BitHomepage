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
	'if TRIM(session("Studid")) = "" OR isEmpty(TRIM(session("Studid"))) OR isNULL(TRIM(session("Studid"))) then
		call alertMsgGoURL ("로그인 정보가 없습니다. \n다시 로그인해 주세요.", "http://www.bitacademy.com/Member/login.asp?return_url=http://www.bitacademy.com/Register/Request/register_employment1.asp")
		response.end
	end if

	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Con_bit_db

	'// 변경 : register_employment1.asp 로 넘어오는 idx 값은 없다고 보여지므로, 아래 처럼 "AND idx = ..." 보다는 차라리 "order by idx desc" 가 현명해 보입니다. (2017-11-25-YG)
	'SQL = "SELECT * FROM Application WHERE StudID="&Studid&" AND idx = "&idx
	SQL = "SELECT * FROM Application WHERE StudID="&Studid&" ORDER BY idx DESC"
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
	<!--#include virtual="/Register/Request/register_employment_script1.asp"-->

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
			$(".snb_1709 .newdepth2_wrap.no1 .newdepth2").eq(6).addClass("on");  	// 신입사원채용교육 ON
			
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
			if ( $("#selCourse").val()=='' ) {
				alert("지원과정을 선택해주세요.");
				$("#selCourse").focus();
			} else if($("#inputSchoolName0").val()=='' && $("#inputSchoolName1").val()=='') {
				alert("학력등록정보는 필수입력사항입니다.");
				$("#inputSchoolName0").focus();
			} else if( ($("#DteFr_0").val()=='' || $("#DayFr_0").val()=='' || $("#DteEnd_0").val()=='' || $("#DayEnd_0").val()=='') &&
				($("#DteFr_1").val()=='' || $("#DayFr_1").val()=='' || $("#DteEnd_1").val()=='' || $("#DayEnd_1").val()=='') ) {
				alert("학력등록정보는 필수입력사항입니다.");
				$("#DteFr_0").focus();
			} else {
				document.ExpertApp.submit();
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
			iSelectDay.location = "/Register/Request/register_common_selectdate_expert.asp?courseid=" + value;
			SelectSubject(this);
		}
	</script>								
	<iframe id="iSelectDay" name="iSelectDay" height="0" width="0"></iframe>
	<form name="ExpertApp" method="POST" action="/Register/Request/register_employment_insert1.asp">
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
							<h4>신입사원채용교육</h4>
						</div>

						<div class="con_wrap1709 bg_none">
							<section class="section">
								<!--<span style="color:blue; font-weight:bold"><br>본 지원양식은 기업 면접관에게 직접 전달되는 자료입니다.<br>원하시는 기업에 입사지원하듯 성실히 작성하여 주시기 바랍니다.</span>-->
								<p class="brownTxt" style="font-size:1.2em;">※ 본 지원양식은 기업 면접관에게 직접 전달되는 자료입니다. <br/>원하시는 기업에 입사지원하듯 성실히 작성하여 주시기 바랍니다.</p>

								<h5>신규지원</h5>
								<div class="divTable">
									<table>
										<colgroup>
											<col style="width:20%">
											<col style="width:80%">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">지원과정</th>
												<td colspan="3" class="l">
													<!--<select id="selCourse" style="width:180px;" name="select1_fir"  onchange="return SelectSubject(this)">-->
													<select id="selCourse" style="width:180px;" name="select1_fir"  onchange="return onChangeSelect1DB(this.value)">
													<option value="">==선택==</option>
													<option value="ITtelecom_EX">㈜아이티텔레콤</option>
													<option value="BAinfra_CX">㈜비에이인프라</option>
													<option value="ivis_EX">㈜아이비스</option>
													<option value="AurosTech_CX">㈜오로스테크놀로지</option>
													<option value="BnEpartners_JX">㈜비즈테크파트너스</option>
													<option value="PSK_CX">㈜피에스케이</option>
													<option value="BITcom">㈜비트컴퓨터</option>
													<option value="Taeha_EX">㈜태하메카트로닉스</option>
													<!--
													<option value="duzon_JX">㈜더존비즈온</option>
													<option value="LEETECH_CX">㈜리텍</option>
													<option value="VOICEYE_CX">㈜보이스아이</option>
													<option value="Cafe24_JX">㈜카페24</option>
													<option value="BITcom">JX(비트컴퓨터)</option>
													<option value="AurosTech_CX">CX(오로스테크놀로지)</option>
													<option value="PSK_CX">CX(피에스케이)</option>
													<option value="BnEpartners_JX">JX(비즈테크파트너스)</option>
													<option value="Taeha_EX">EX(태하메카트로닉스)</option>
													<option value="ivis_EX">EX(아이비스)</option>
													<option value="LEETECH_CX">CX(리텍)</option>
													<option value="VOICEYE_CX">CX(보이스아이)</option>
													-->

														<% 	
															''' YG : '모집중'인 기업을 선택지들 중 위에서 먼저 보이도록 하기 위해서 -- 아래의 두 가지 작업을 해주면 됩니다 :
															''' 1) 위위위에 <option> 항목에 한줄 추가
															''' 2) 아래 "and CourseID not in (...)" 절에 추가
															' SQL="SELECT CourseID,CourseName From   Course"
															' SQL=SQL &"   Where  Expertid = '기업위탁' and key_word like 'open'"
															
															' SQL=SQL & " and CourseID not in ('VOICEYE_CX', 'DIGIENCE_CX', 'BANKWARE_JX', 'DAREINC_CX', 'KCTech_CX', 'LEETECH_CX', 'QMC_CX', 'ivis_EX', 'SEMICS_CX','INTEKDIGITAL_JX','BnEpartners_JX')"
															' SQL=SQL & " order by CourseName asc"
															
															' Set Rs = Dbcon.Execute(SQL)
															' If (Rs.EOF) then
															' else

															' Rs.MoveFirst 
															' DO While not Rs.EOF
																' If isAppYN="Y" AND app_CourseID = Trim(Rs("CourseID")) Then 
																' Response.Write "<option value='"& Rs("CourseID") & "' selected>"
																' Else
																' Response.Write "<option value='"& Rs("CourseID") & "'>"
																' End If 
																' Response.Write Rs("CourseName") & "</option>"
																' Rs.MoveNext
														   ' loop
															' Rs.close
															' Set Rs = Nothing
														   ' end if
														 %>
													</select>
												</td>
											</tr>
											<tr style="display:none;">
												<th scope="row">지원종류</th>
												<td colspan="3" class="l">
													<select id="select" style="width:140px" name="select2">
														<option value='재직자환급지원' <%If isAppYN="Y" AND app_AppliType = "재직자환급지원" Then %>selected<%End if%>>재직자환급지원</option>
													 </select>
												</td>
											</tr>
											<tr>
												<th scope="row">전형과목</th>
												<td colspan="3" class="l">
													<select style="width: 140px" name="select3"  disabled>
														<option value="">지원과정 선택</option>
													</select>
												</td>
											</tr>
											<tr>
												<th scope="row">전형일자</th>
												<td class="l">
													<select id="select4" style="width:140px" name="select4" onclick="JavaScript:SelectDateCheck()">
													   <option value="">==선택==</option>
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

											'			sql="select SelectDate From SelectDateTable Where S_Max > S_Current and selectdate like '"&left(date,7)&"%' and ExpertID='전문가' order by selectdate"
											' (장후녕) 날짜 제한이 걸려있는 부분을 삭제함. (selectdate like '%left(date,7)%')
														SQL="select SelectDate From SelectDateTable Where S_Max > S_Current and ExpertID='기업위탁' order by selectdate"
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
													</select> <input type=hidden value="<%=totSelectDate%>" name="totselectdate"> 
												</td>
											</tr>
											<tr>
												<th scope="row">이름</th>
												<td colspan="3" class="l"><%=Rs("NameHan")%></td>
											</tr>
											<tr>
												<th scope="row">영문</th>
												<td colspan="3" class="l"><%=Rs("NameEng")%></td>
											</tr>
											<input type="hidden" name="jumin1" value="<%=StudResnum1%>">
											<input type="hidden" name="jumin2" value="<%=StudResnum2%>">	
											<tr>
												<th scope="row">E-Mail</th>
												<td colspan="3" class="l"><%=Rs("Email")%></td>
											</tr>

											<tr>
												<th scope="row">주소</th>
												<td colspan="3" class="l"><%=Rs("NowPostNum")%>&nbsp;&nbsp;<%=Rs("NowAddress")%></td>
											</tr>
											<tr>
												<th scope="row">핸드폰</th>
												<td colspan="3" class="l"><%=Hand(0)%> - <%=Hand(1)%> - <%=Hand(2)%></td>
											</tr>
											<tr>
												<th scope="row">연락처</th>
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
							
							<!-- # i n c l ude virtual="/Register/Include/register_info_01.asp" -->
							<!-- From /Register/Include/register_info_01.asp -->
							<%
							'// 작업의도 : (2017-11-리뉴얼 작업시) /Register/Include/register_info_01.asp 의 내용을 여기로 가져옴. 다른 소스에서 이를 사용할 일이 드물며 오히려 관리가 번거로워, Include폴더에 별도로 있을 필요를 못느낌.
							'// 실질적으로는 register_chung1.asp 의 내용과 동일하므로, register_chung1.asp 의 내용을 복붙. 끝.
							%>
							<section class="section mar_t20">
								<h5>학력등록정보</h5>
								<div class="divTable">
									<table class="padding2px">
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

										  SQL="select * from MemberScholarshipBTC "
										  SQL=SQL&"     Where  StudID="&Studid&" "&vbcrlf
										  SQL=SQL&"     Order  By periodfr, Num "&vbcrlf
															 
										  Set Rs = Dbcon.Execute(SQL)
										  
										  EdCnt=Rs.RecordCount
										  
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
												<td> <!-- 기간 -->
													<input id="DteFr_<%=i%>" type="text" name="DteFr_<%=i%>"  value="<%=YYFr%>" size=3  maxLength="4" onkeypress="onlyNumber();" onchange="JavaScript:chknext(this)" style="width:33px">
													년
													<select id="DayFr_<%=i%>" name="DayFr_<%=i%>" size="1">
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
													~<br/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
													<input id="DteEnd_<%=i%>" name="DteEnd_<%=i%>"  size=3 value="<%=YYEnd%>" maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();" style="width:33px">
													년
													<select id="DayEnd_<%=i%>" name="DayEnd_<%=i%>" size="1">
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
													<input id="inputSchoolName<%=i%>" name="School_<%=i%>" value="<%=School%>" maxLength="14" size="9" style="width:70px; height:22px;" >
													<select id="selectSchool<%=i%>" name=schoolclassify_<%=i%>   style="HEIGHT:22px; WIDTH:85px; background-color:#f7f7ff;" onChange="OnSelectChangeSchool(<%=i%>);">
														<option value="">선택</option>
														<% if i=0 then%>
															<option value="고등학교" <%if selectschool="고등학교" then%> selected<%end if%>>고등학교</option>
															<option value="검정고시" <%if selectschool="검정고시" then%> selected<%end if%>>검정고시</option>
														<%else%>
															<option value="대학교"  <%if selectschool="대학교" then%> selected<%end if%>>대학교</option>
															<option value="대학원"  <%if selectschool="대학원" then%> selected<%end if%>>대학원</option>			
															<option value="대학" <%if selectschool="대학" then%> selected<%end if%>>대학</option>														
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
												<td> <!-- 학위 -->
													<% if i=0 then%>
													  <input type=hidden name='SchDegree_0' value="">
													  <% else%>
													  <select name="SchDegree_<%=i%>" style="HEIGHT: 22px;WIDTH: 55px">
														<option value="">선택</option>
														<%	if (selectschool = " 대학") then%>
															<option value=학사 <%if Degree="전문학사" then %> selected<%end if%>>전문학사</option>
															<option value=석사 <%if Degree="석사" then %> selected<%end if%>>석사</option>
															<option value=박사 <%if Degree="박사" then %> selected<%end if%>>박사</option>
														<%	elseif (selectschool = "대학교") then%>
															<option value=학사 <%if Degree="학사" then %> selected<%end if%>>학사</option>
															<option value=석사 <%if Degree="석사" then %> selected<%end if%>>석사</option>
															<option value=박사 <%if Degree="박사" then %> selected<%end if%>>박사</option>
														<%	elseif (selectschool = "대학원") then%>
															<option value=석사 <%if Degree="석사" then %> selected<%end if%>>석사</option>
															<option value=박사 <%if Degree="박사" then %> selected<%end if%>>박사</option>
														<%	end if%>
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
											
											<tr>
												<th>수행프로젝트 제목/내용</th>
												<td colspan="6" class="l"><textarea onkeyup="chklen(this,'학위논문')"  name="papertext"  style="width:100%; height:110px; padding:0px; border:0px"><%=Paper%></textarea></td>
											</tr>
										</tbody>
									</table>
								</div>
							</section>
							
							<section class="section">
								<h5>학원교육</h5>
								<div class="divTable">
									<table class="padding2px">
										<colgroup>
											<col style="width:23%">
											<col style="width:20%">
											<col style="width:20%">
											<col style="width:37%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">기간</th>
												<th scope="col">교육기간</th>
												<th scope="col">교육과정</th>
												<th scope="col">주요교육내용</th>
											</tr>
										</thead>
										 <%  '********************************이력 교육 조회*************************************************** 
						
											  SQL="select * from MemberEducation "
											  SQL=SQL&"     Where  StudID="&Studid&" "&vbcrlf
											  SQL=SQL&"     Order by Num "&vbcrlf

											  Set Rs = Dbcon.Execute(SQL)

											  SchCnt=Rs.RecordCount            
											  
											For i=0 To 3

											  If not Rs.EOF then
													YYFr=Left(Rs("PeriodFr"),4)
													MMFr=Right(Rs("PeriodFr"),2)        
													YYEnd=Left(Rs("PeriodTo"),4)
													MMEnd=Right(Rs("PeriodTo"),2)
													
													Academy=Rs("Academy")
													Course=Rs("Course")
													Contents=Rs("Contents")
													num=Rs("Num")
													
													Rs.MoveNext	   
														
												
												elseif YYFr<>"" then 'DB에 입력된 경력정보가 더이상 없을때 빈문서만 출력한다
														
													YYFr=""
													MMFr=""        
													YYEnd=""
													MMEnd=""
													Academy=""
													Course=""
													Contents=""
													num=""			
													
												end if		
										  %>      
										<tbody>
											<tr>
												<td>
													<input type="text" name="EdDteFr_<%=i%>" value="<%=YYFr%>" maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();" style="WIDTH: 32px; BORDER-TOP-STYLE: outset; BORDER-LEFT-STYLE: outset">
													년
													<select name="EdDayFr_<%=i%>" size="1">
														<option value=""></option>
														<% 								    
															For c=1 To 12				
																IF c < 10 then									  
																	Cnt= "0" & Cstr(c)
																else
																	cnt=Cstr(c)								
																End if	    
														%>
														<option value=<%=cnt%> <%IF MMFr=Cnt then%> selected<%end if%>><%=Cnt%></option>
														<% Next %>          
													</select>
													월
													~<br/>&nbsp; &nbsp; &nbsp; 
													<input type="text" name="EdDteEnd_<%=i%>" value="<%=YYEnd%>"  maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();" style="WIDTH: 32px; BORDER-TOP-STYLE: outset; BORDER-LEFT-STYLE: outset">
													년
													<select name="EdDayEnd_<%=i%>" size="1">
														<option value=""></option>
														<% 								    
															For d=1 To 12				
																IF d < 10 then									  
																	Cnt1= "0" & Cstr(d)
																else
																	cnt1=cstr(d)
																End if	    
														%>
																<option value=<%=cnt1%> <%IF MMEnd=Cnt1 then%> selected<%end if%>><%=Cnt1%></option>
														<% Next %>          
													</select>
													월
												</td>
												<td>
													<select name="EdName_<%=i%>"  onchange="JavaScript:togglefaq('faq<%=i%>',this)"   style="HEIGHT: 22px;WIDTH: 140px">
														<option value=""></option>
														<% SQL="select Name1 From IDTable where IDType='교육기관' order by ID"
														   Set Rs1 = Dbcon.Execute(SQL)
														   switch=false
														   do until Rs1.EOF%>
															<option value='<%=Rs1("Name1")%>' <%if Rs1("Name1")=Academy then %> selected<%end if%>><%=Rs1("Name1")%></option>
														 <%
														   if Rs1("Name1")=Academy then
															switch=true
														   end if
														   Rs1.MoveNext
														   loop
														   Rs1.Close
														   if switch=false and Academy > "" then
																Response.Write "<option value='"& Academy &"' selected>"& Academy &"</option>"		   
														   end if
														%>	  
														<option value="기타">기타</option>
													 </select><br>
													 <span ID="faq<%=i%>" style="display:none">
														<input type="text" name="EdEtcName_<%=i%>" value="" style="width:128px;" placeholder="입력해주세요."/>
													 </span>
												</td>
												<td><input type="text" name="EdCourseName_<%=i%>" value="<%=Course%>" size="18"></td>
												<td><input type="text" name="EdContents_<%=i%>" value="<%=Contents%>" size="37"></td>
											</tr>
											<input type="hidden" name="Num2_<%=i%>" value="<%=Num%>">
											<%Next
											Rs.Close%> 
										</tbody>
									</table>
								</div>
							</section>
							
							<section class="section">
								<h5>직장근무경력</h5>
								<div class="divTable">
									<table class="padding2px">
										<colgroup>
											<col style="width:35%">
											<col style="width:20%">
											<col style="width:15%">
											<col style="width:15%">
											<col style="width:5%">
											<col style="width:5%">
											<col style="width:5%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">기간</th>
												<th scope="col">회사명</th>
												<th scope="col">부서</th>
												<th scope="col">주업무/개발프로그램</th>
												<th scope="col">직위</th>
												<th scope="col">연봉</th>
												<th scope="col">퇴직사유</th>
											</tr>
										</thead>
										 <%
					 
										SQL="select * From MemberCareerBTC Where StudID="&Studid&""
										SQL=SQL&"     Order by Num "

										 Set Rs = Dbcon.Execute(SQL)
											
											CarrCnt=Rs.RecordCount 
											'Response.cookies("CarrCnt")=CarrCnt
											
											For i=0 To 3
											
											IF not Rs.EOF then		  
														   
												YYFr=TRIM(left(Rs("PeriodFr"),4))
												MMFr=TRIM(Right(Rs("PeriodFr"),2))
									 
												YYEnd=TRIM(Left(Rs("PeriodTo"),4))
												MMEnd=TRIM(Right(Rs("PeriodTo"),2) )

												CompName=Rs("CompName")							
												Department=Rs("Department")
												Operation=Rs("Operation")
												Grade=Rs("Grade")
												Yearpay=Rs("Yearpay")
												RetireReason=Rs("RetireReason")
												Num=Rs("Num")
												
												Rs.MoveNext	   
													 
											else 'DB에 입력된 경력정보가 더이상 없을때 빈문서만 출력한다				
												
													YYFr=""
													MMFr=""
									 
													YYEnd=""
													MMEnd=""
													
													CompName=""
													Department = ""
													Grade=""
													Operation=""
													Yearpay=""
													RetireReason=""
													Num=""
											end if	    
														
										%> 
										<tbody>
											<tr>
												<td>
													<input type="text" name="CarrDteFr_<%=i%>" value="<%=YYFr%>" maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();" style="width:30px">
													년
													<select name="CarrDayFr_<%=i%>" size="1">
													<option value=""></option>
													<% 								    
														For c=1 To 12				
															IF c < 10 then									  
																Cnt= "0" & Cstr(c)
															else
																cnt=Cstr(c)								
															End if	    
													%>
															<option value=<%=cnt%> <%IF MMFr=Cnt then%> selected<%end if%>><%=Cnt%></option>
													<% Next %>          
													</select>
													월
													~ <br/>&nbsp; &nbsp; 
													<input type="text" name="CarrDteEnd_<%=i%>" value="<%=YYEnd%>"  maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();"  style="width:30px">
													년
													<select name="CarrDayEnd_<%=i%>" size="1">
														<option value=""></option>
														<% 								    
															For d=1 To 12				
																IF d < 10 then									  
																	Cnt1= "0" & Cstr(d)
																else
																	cnt1=cstr(d)
																End if	    
														%>
																<option value=<%=cnt1%> <%IF MMEnd=Cnt1 then%> selected<%end if%>><%=Cnt1%></option>
														<% Next %>          
													</select>
													월
												</td>
												<td><input type="text" name="CarrName_<%=i%>" value="<%=CompName%>" style="WIDTH: 125px"></td>
												<td><input type="text" name="CarrDep_<%=i%>" value="<%=Department%>" style="WIDTH: 92px"></td>
												<td><input type="text" name="CarrOp_<%=i%>" value="<%=Operation%>" style="WIDTH: 120px"></td>
												<td><input type="text" name="CarrDegree_<%=i%>" value="<%=Grade%>" style="WIDTH: 35px"></td>
												<td><input type="text" name="CarrYearpay_<%=i%>" value="<%=Yearpay%>" style="WIDTH: 35px"></td>
												<td><input type="text" name="CarrRetire_<%=i%>" value="<%=RetireReason%>" style="WIDTH: 60px" maxlength=100></td>
											</tr>
											<input type="hidden" name="CarrNum_<%=i%>" value="<%=Num%>">
											<%
											Next
											Rs.close
											'*********************************************************************************************************************
											%>
										</tbody>
									</table>
								</div>
							</section>
							<% 
							  '*******************************외국어 조회**********************************************************************************			
								
								Dim Eng1(5)
								
								Eng1(0)="없음"
								Eng1(1)="일어"
								Eng1(2)="독어"
								Eng1(3)="불어"
								Eng1(4)="중국어"
							   

								SQL="select LangType,EngRead,EngComposit,EngTalk,SecLangType,SecRead,SecComposit,SecTalk  "&vbcrlf
								SQL=SQL&"   FROM   Member						 "&vbcrlf
								SQL=SQL&"   Where  Studid="&Studid&"   "&vbcrlf
									
								Set Rs = Dbcon.Execute(SQL)
								
								EngRead=Rs("EngRead")
								EngComposit=Rs("EngComposit")
								EngTalk=Rs("EngTalk")

								SecLangType=Rs("SecLangType")				
								SecRead=Rs("SecRead")
								SecComposit=Rs("SecComposit")
								SecTalk=Rs("SecTalk")

								Rs.Close
								'set oRS0=nothing
							%>

							<section class="section">
								<h5>외국어</h5>
								<div class="divTable">
									<table class="padding2px">
										<colgroup>
											<col style="width:8%">
											<col style="width:20%">
											<col style="width:20%">
											<col style="width:20%">
											<col style="width:25%">
										</colgroup>
										
										<thead>
											<tr>
												<th scope="col">언어</th>
												<th scope="col">독해</th>
												<th scope="col">작문</th>
												<th scope="col">회화</th>
												<th scope="col">공인시험성적</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="c">영어</td>
												<td class="c">
													<input name="Eread" type="radio"  <% If EngRead = "0" Then %> CHECKED <%end if%>  value="0" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">상

													 <input name="Eread" type="radio" <% If EngRead = "1" Then %> CHECKED <%end if%>  value="1" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">중 

													 <input name="Eread" type="radio"  <% If EngRead = "2" Then %> CHECKED <%end if%> value="2" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">하
												</td>
												<td class="c">
													<input name="Ewrite" type="radio"  <% If EngComposit = "0" Then %> CHECKED <%end if%> value="0" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">상

													 <input name="Ewrite" type="radio" <% If EngComposit = "1" Then %> CHECKED <%end if%> value="1"   style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">중

													 <input name="Ewrite" type="radio" <% If EngComposit = "2" Then %> CHECKED <%end if%> value="2"   style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">하
												</td>
												<td class="c">
													<input name="Espeak" type="radio"  <% If EngTalk = "0" Then %> CHECKED <%end if%> value="0" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">상

													<input name="Espeak" type="radio" <% If EngTalk = "1" Then %> CHECKED <%end if%>  value="1" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">중

													<input name="Espeak" type="radio"  <% If EngTalk = "2" Then %> CHECKED <%end if%> value="2" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">하
												</td>
												<td class="c">
													<select name="langname1"><option selected>없음</option>
													  <%
														  SQL="select LangName,Score from LangGrade where studid="&Studid&" order by langname"
										
														  Set Rs = Dbcon.Execute(SQL)
														  Dim LangName(2),ExamScore(2)
															i=0
															do until Rs.EOF
																LangName(i)=Rs("LangName")
																ExamScore(i)=Rs("Score")							
																Rs.MoveNext
																i=i+1
															loop
															Rs.Close

														  sql="select Name1 from idtable where idtype ='언어시험'"
														  
														  Set Rs = Dbcon.Execute(SQL)
															 do until Rs.EOF %> 
															  
																	<option <%If LangName(0)=Rs("Name1") Then%> selected<%end if%> ><%=Rs("Name1")%></option>
																  
														   <%Rs.MoveNext 
															 Loop
														   %>
												  </select>
												<input name="ExamScore1" value="<%=ExamScore(0)%>" style="WIDTH: 25px"> 점</td>
											</tr>
											<tr>
												<td class="c">
													<select style="WIDTH: 55px" name="SecLangType">		
													  <% For i=0 To 4 %>                 
															  <option <%If SecLangType=Eng1(i) Then%> selected<%end if%>><%=Eng1(i)%></option>
													  <% Next %>
													</select>
												</td>
												<td class="c">
													<input name="Secread" type="radio"  <% If SecRead = "0" Then %> CHECKED <%end if%> value="0">상
													<input name="Secread" type="radio"  <% If SecRead = "1" Then %> CHECKED <%end if%> value="1">중
													<input name="Secread" type="radio"  <% If SecRead = "2" Then %> CHECKED <%end if%> value="2">하
												</td>
												<td class="c">
													<input name="Secwrite" type="radio" <% If SecComposit = "0" Then %> CHECKED <%end if%> value="0">상
													<input name="Secwrite" type="radio" <% If SecComposit = "1" Then %> CHECKED <%end if%> value="1">중
													<input name="Secwrite" type="radio" <% If SecComposit = "2" Then %> CHECKED <%end if%> value="2">하
												</td>
												<td class="c">
													<input name="Secspeak" type="radio"  <% If SecTalk = "0" Then %> CHECKED <%end if%> value="0">상
													<input name="Secspeak" type="radio"  <% If SecTalk = "1" Then %> CHECKED <%end if%> value="1">중
													<input name="Secspeak" type="radio"  <% If SecTalk = "2" Then %> CHECKED <%end if%> value="2">하
												</td>
												<td class="c">
													<select name="langname2"><option selected>없음</option>
														  <%
															  Rs.MoveFirst
																 do until Rs.EOF %> 
																  
																		<option <%If LangName(1)=Rs("Name1") Then%> selected<%end if%>><%=Rs("Name1")%></option>
																	  
															   <%Rs.MoveNext 
																 Loop
																 Rs.Close%>		
													  </select>
													<input name="ExamScore2" value="<%=ExamScore(1)%>" style="WIDTH: 25px">점
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</section>

							<section class="section">
								<h5>병역</h5>
								<div class="divTable">
									<table class="padding2px">
										<colgroup>
											<col style="width:25%">
											<col style="width:25%">
											<col style="width:10%">
											<col style="width:10%">
											<col style="width:30%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">입대일</th>
												<th scope="col">전역일</th>
												<th scope="col">병과</th>
												<th scope="col">계급</th>
												<th scope="col">미필사유</th>
											</tr>
										</thead>
										
										<tbody>
											<% 
												  SQL="select MilArm,MilRank,MilEnrollDate,MilDischargeDate,MilincompletReason "
												  SQL=SQL&"  From   Member														"&vbcrlf
												  SQL=SQL&"  Where  StudID="&Studid&"                                 "&vbcrlf
												  Set Rs = Dbcon.Execute(SQL)
												  
												  iF  Rs("MilEnrollDate") = "" or isnull(Rs("MilEnrollDate"))  Then
													'
												  else		  
														YYFr1=Left(Rs("MilEnrollDate"),4)
														MMFr1=Mid(Rs("MilEnrollDate"),6,2)
														DDFr1=Right(Rs("MilEnrollDate"),2)  
																	
														YYFr2=Left(Rs("MilDischargeDate"),4)
														MMFr2=Mid(Rs("MilDischargeDate"),6,2)
														DDFr2=Right(Rs("MilDischargeDate"),2) 
												  end if
												  MilArm=Rs("MilArm")
												  MilRank=Rs("MilRank")
												  MilincompletReason=Rs("MilincompletReason")
												  
												  Rs.Close 
											%> 
											<tr>
												<td class="c">
													<input type="text" name="MilYearFr1" value="<%=YYFr1%>" maxlength="4" onChange="JavaScript:chknext(this)"  onKeyPress="onlyNumber();" style="width:30px">
													년
													<select name="MilMonFr1" size="1">
														<option value=""></option>
														<% 
															For c=1 To 12														
																IF c <10 then									  
																	Cnt= "0" & Cstr(c)
																else
																	cnt=Cstr(c)
																End if 
														%>
																<option <%IF MMFr1=Cnt then%> selected<%end if%> value=<%=cnt%>><%=Cnt%></option>								              
														<% Next %>
													</select>   
													월
												</td>
												<td class="c">
													<input type="text" name="MilYearFr2" value="<%=YYFr2%>" maxlength="4" onChange="JavaScript:chknext(this)"  onKeyPress="onlyNumber();" style="width:30px"> 
													년
													<select name="MilMonFr2" size="1">
														<option value=""></option>
														<% 
															For c=1 To 12														
																IF c <10 then									  
																	Cnt2= "0" & Cstr(c)
																else
																	Cnt2=Cstr(c)
																End if 
														%>
																<option <%IF MMFr2=Cnt2 then%> selected<%end if%> value=<%=cnt2%>><%=Cnt2%></option>								              			       
														<% Next %>
													</select>
													월
												</td>
												<td class="c"><input type="text" name="MilArm" value="<%=MilArm%>" style="width:50px"></td>
												<td class="c"><input type="text" name="MilRank" value="<%=MilRank%>" style="width:50px"></td>
												<td class="c"><input type="text" name="MilReason" value="<%=MilincompletReason%>" style="width:190px"></td>
											</tr>
										</tbody>
									</table>
								</div>
							</section>

							<section class="section">
								<h5>자격/면허</h5>
								<div class="divTable">
									<table class="padding2px">
										<colgroup>
											<col style="width:50%">
											<col style="width:50%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">취득일</th>
												<th scope="col">종류</th>
											</tr>
										</thead>
										<tbody>
											<%
												 SQL="select AcquireDate,LiceName From MemberLiceExamPrize Where StudID ="&Studid
												 SQL=SQL&"     Order by AcquireDate Desc "
									   
												 Set Rs = Dbcon.Execute(SQL)
												
												For i=0 To 1
												
												IF not Rs.EOF then		  
															   
													YYFr=Left(Rs("AcquireDate"),4)
													MMFr=Right(Rs("AcquireDate"),2) 

													LiceName=Rs("LiceName")

													Rs.MoveNext	   
														 
												elseif YYFr<>"" then 'DB에 입력된 자격정보가 더이상 없을때 빈문서만 출력한다				
													
														YYFr=""
														MMFr=""
											
														LiceName=""
														Num=""
												end if	    
															
											%>
											<tr>
												<td class="c">
													<input type="text" name="LDteFr_<%=i%>" value="<%=YYFr%>" maxLength="4" onchange="JavaScript:chknext(this)"  onkeypress="onlyNumber();" style="WIDTH: 32px; BORDER-TOP-STYLE: outset; BORDER-LEFT-STYLE: outset">
													년
													<select name="LDayFr_<%=i%>" size="1"> 
														<option value=""></option>	    
														<% 
															For c=1 To 12												
																IF c <10 then									  
																	Cnt= "0" & Cstr(c)
																else 
																	Cnt = cstr(c)
																End if
														%>
																<option <%IF MMFr=Cnt then%> selected<%end if%> value=<%=cnt%>><%=Cnt%></option>								              
															<%Next%>									          
													</select>
													월
												</td>
												<td class="c"><input type="text" name="LName_<%=i%>" value="<%=LiceName%>" style="WIDTH: 300px"></td>
											</tr>
											<%  Next 
													Rs.close
											   %>
										</tbody>
									</table>
								</div>
							</section>

							<section class="section">
								<h5>수료 후 계획</h5>
								<div class="divTable">
									<table class="padding2px">
										<colgroup>
											<col style="width:50%">
											<col style="width:50%">
										</colgroup>
										<tbody>
											<tr>
												<td class="l" colspan="2">
													<input name="hope" type="checkbox" value="0" <%If isAppYN="Y" AND InStr(app_Hope, "0")>0 Then %>checked<%End If %>> 취업
													<input name="hope" type="checkbox" value="1" <%If isAppYN="Y" AND InStr(app_Hope, "1")>0 Then %>checked<%End If %>>해외취업
													<input name="hope" type="checkbox" value="2" <%If isAppYN="Y" AND InStr(app_Hope, "2")>0 Then %>checked<%End If %>>복직혹은 복학
													<input name="hope" type="checkbox" value="3" <%If isAppYN="Y" AND InStr(app_Hope, "3")>0 Then %>checked<%End If %>>대학원진학
													<input name="hope" type="checkbox" value="4" <%If isAppYN="Y" AND InStr(app_Hope, "4")>0 Then %>checked<%End If %>>병역특례
													<input name="hope" type="checkbox" value="5" <%If isAppYN="Y" AND InStr(app_Hope, "5")>0 Then %>checked<%End If %>>기타
												</td>
											</tr>
											<tr>
												<th scope="col" class="tit">수료 후 계획 (구체적으로)</th>
												<th scope="col" class="tit">지난 전형결과</th>
											</tr>
											<tr>
												<td>
													<textarea onBlur="chklen_plan(this)" name="hopetext" style="width:100%; height:100px; padding:0px; border:0px"><%=app_HopeText%></textarea>
												</td>
												<td>
													<% 
														SQL = "Select  Yearmonth,CourseID,SelectResult,IntervOpinion                                           " & vbCrLf
														SQL = SQL & "From    Application                                                    " & vbCrLf
														SQL = SQL & "Where   Studid = " & studid & "                                        " & vbCrLf
														SQL = SQL & "And    left(YearMonth,7) = (select max(left(YearMonth,7))                              " & vbCrLf
														SQL = SQL & "                             From Application                          " & vbCrLf
														SQL = SQL & "                             Where Studid = " & studid & "             " & vbCrLf
														SQL = SQL & "                             And YearMonth < '" & left(date,7) & "')   " & vbCrLf
														
														Set Rs = Dbcon.Execute(SQL)
														do until Rs.EOF
															Response.Write Rs("YearMonth")&"일 "&Rs("CourseID")&"과정 "&Rs("selectresult")&"<br><b>면접의견</b>:"&Rs("IntervOpinion")&"<br>"
															Rs.MoveNext
														Loop
														Rs.Close
													%>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</section>

							<section class="section">
								<h5>흡연여부</h5>
								<div class="divTable">
									<table class="padding2px">
										<tbody>
											<tr>
												<td class="l">
													<select name="smoke" style='width:62'>
														<option value=''>선택</option>
														<option value='비흡연' <%if smoke="비흡연" then %> selected<%end if%>>비흡연</option>				
														<option value='0.5갑이하' <%if smoke="0.5갑이하" then %> selected<%end if%>>0.5갑이하</option>
														<option value='1갑이하' <%if smoke="1갑이하" then %> selected<%end if%>> 1갑이하</option>
														<option value='1.5갑이하' <%if smoke="1.5갑이하" then %> selected<%end if%>>1.5갑이하</option>
														<option value='2갑이하' <%if smoke="2갑이하" then %> selected<%end if%>> 2갑이하</option>
														<option value='2.5갑이하' <%if smoke="2.5갑이하" then %> selected<%end if%>>2.5갑이하</option>
														<option value='3갑이하' <%if smoke="3갑이하" then %> selected<%end if%>> 3갑이하</option>
														<option value='3갑이상' <%if smoke="3갑이상" then %> selected<%end if%>>3갑이상</option>				
													</select>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</section>
							<!-- // from /Register/Include/register_info_01.asp -->
							
							<div class="btn_wrap c pd_t30 pd_b30">
								<a href="javascript:submitCheck();" title="" class="btnGreenBorder big" style="width:80px;">다음페이지</a>
								<a href="/Register/register_newRequest.asp" title="" class="btnWhiteBorder big" style="width:80px;">취소</a>
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
<%
'	Rs.close
	Dbcon.close
'	Set Rs = Nothing
	Set Dbcon = Nothing
%>