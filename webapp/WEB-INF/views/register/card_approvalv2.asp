<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->
<!--#include virtual="/Include/Common_Defend_1709.asp"-->
<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 

Studid = TRIM(session("Studid"))

'response.write "Studid:"&Studid&"<br>"

if Studid = "" OR isEmpty(Studid) OR isNULL(Studid) then
'if TRIM(session("Studid")) = "" OR isEmpty(TRIM(session("Studid"))) OR isNULL(TRIM(session("Studid"))) then
	call alertMsgGoURL ("로그인 정보가 없습니다. \n다시 로그인해 주세요.", "/Member/login.asp?return_url=/Register/card_approval.asp")
	response.end
end if


Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>

	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			$(".snb_1709 a.newdepth1").eq(3).addClass("on");								// 카드결제
			//$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");						// 
			//$(".snb_1709 .newdepth2_wrap.no2 .newdepth2").eq(2).addClass("on");  	// 

			//ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_01.asp');
			//$(".snb_1702 .newdepth1").eq(3).addClass("on");
		});
	</script>
	<script language=javascript src="http://plugin.inicis.com/pay40.js"></script>
	<!--	
	<script language=javascript src="http://bitacademy.com/online_pay/pay40.js"></script>
	-->
	<script language=javascript>
		StartSmartUpdate();
		function pay(frm)
		{

			if(frm.price.value=="")
			{
				alert("카드결제금액을 입력하여 주십시요");
				frm.price.focus();
			}
			else{
				if(navigator.appName == 'Netscape')
				{
					if(document.INIpay == null )
						alert("이니페이 플러그인이 설치되지 않았습니다.\n\n플러그인을 설치한 후에 다시 시도 하십시오.");
					else
					{
						if (MakePayMessage(frm) == true) frm.submit();
						else alert("지불에 실패하였습니다.");
					}
				}
				else
				{
					if(document.INIpay.object == null )
						alert("이니페이 플러그인이 설치되지 않았습니다.\n\n플러그인을 설치한 후에 다시 시도 하십시오.");
					else
					{
						if (MakePayMessage(frm) == true) frm.submit();
						else alert("지불에 실패하였습니다.");
					}
				}
			}
		}
		
		function installPlugin()
		{
			window.location = "http://download.inicis.com/install_plugin.html";
		}

		function onlyNumber()//숫자만 입력하게 하는 방법
		{
			if((event.keyCode<48)||(event.keyCode>57))
				event.returnValue = false;
		}
		
		function goIndex(fm)
		{
			fm.action="/";
			fm.submit();
		}
		
		// (2018-07-16-YG) 기존의 1개 과정만 보여주는 페이지의 틀에 기능추가 : 다른 과정 결제.
		function showUpTheUnpaid() {
			$("#divListUnpaid").show();
		}
	</script>
	<style>
		#Wrapper { margin-top:-16px !important; }
	</style>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>

	<%
		strYyMm = left(now,7)


	'중복결제가 되지 않는 문제로 수정(2012.11.30)	- 지원한 날짜로 검색			
	'				sql=""
	'				sql="       select mem.Telephone,mem.Email,CourseID,App.Yearmonth,App.AppliKind,App.AppliType,App.SelectResult,App.CardReceiptStat,App.AppFrom "
	'				sql=sql&"	From   Application App,Member Mem                   "&vbcrlf
	'				sql=sql&"   Where  App.Studid = Mem.Studid                      "&vbcrlf  
	'				sql=sql&"   And    App.Studid = "&Studid&"            "&vbcrlf
	'				sql=sql&"   And    App.yearmonth = mem.recentdte " 

					

	'전문가과정 결제 시 "지원하신 교육과정이 없습니다"로 뜨는 경우 아래 문구로 저장 하면 됨.- 전문가과정이 가장 최근 지원일 경우만 해당
	'				sql=""
	'				sql="       select top 1 mem.Telephone,mem.Email,CourseID,App.Yearmonth,App.AppliKind,App.AppliType,App.SelectResult,App.CardReceiptStat,App.AppFrom "
	'				sql=sql&"	From   Application App,Member Mem                   "&vbcrlf
	'				sql=sql&"   Where  App.Studid = Mem.Studid                      "&vbcrlf  
	'				sql=sql&"   And    App.Studid = "&Studid&"            "&vbcrlf
	'				sql=sql&"   And	   App.SelectResult = '합격' ORDER BY App.YearMonth DESC " 
%>

<%
	IF cID="" Then
'//		response.write "cID is blank.<br/>"
	Else
'//		response.write "cID = " & cID & "<br/>"
	End IF
%>

<%
	'// 2018-07-16-YG : OnLoad CourseID 선택기능 추가.
	cID = Request.QueryString("cID")

		'전문가과정 외 과정에 대해 결제할 경우 사용
		'// (2018-03-23-YG) SelectResult가 '합격'이 아니어야 함을 기록함. 원래 이럼.
		sql=""
		sql="select top 1 mem.Telephone,mem.Email,CourseID,App.Yearmonth,App.AppliKind,App.AppliType,App.SelectResult,App.CardReceiptStat,App.AppFrom "
		sql=sql&"	From   Application App,Member Mem                   "&vbcrlf

		IF cID="" Then
			'// 쿼리스트링 cID가 없을 때. 즉, 본래의 기능을 사용할 상황.
			sql=sql&"   Where  App.Studid = Mem.Studid                      "&vbcrlf  
			sql=sql&"   And    App.Studid = "&Studid&"            "&vbcrlf
			sql=sql&"   And    App.CardReceiptStat != '승인'            "&vbcrlf
			sql=sql&"   AND    App.CourseID NOT IN ('CP_Master','JP_Master')"
			sql=sql&"   And    App.SelectResult <> '합격' ORDER BY App.YearMonth DESC" 
		Else
			'// 쿼리스트링 cID가 있을 때. 즉, 선택한 CourseID가 있는 상황.
			sql=sql&" WHERE App.Studid = Mem.Studid" &_
					" AND App.CourseID = '"&cID&"' " &_
					" AND App.CardReceiptStat != '승인'" &_
					" AND App.SelectResult <> '합격' " &_
					" ORDER BY App.YearMonth DESC"  
		END IF
		
		Call YGLogger("SQL", sql, "/Request/card_approval.asp", "Studid:"&Studid)		'// USAGE : CALL YGLogger(logName, logText, logWhere, loginID)
		Set Rs = Dbcon.Execute(sql)
		
		If Rs.EOF then
			call alertMsgBack( "지원하신 교육과정이 없습니다." )
			Rs.Close
			Dbcon.close
			Response.End
		end if


		' 경남 IT 관련 지원자는 online 결제를 할 수 없다.
		if (Rs("AppFrom") = "1") then
			call alertMsgGoURL ("방문 결제(카드)만 가능합니다.\n\n(무통장 입금도 가능합니다.)", "/default.asp")
			Rs.Close
			Dbcon.close
			Response.End
		end if

		AppliKind=Rs("AppliKind")	  	
		IF ( AppliKind="직장인") then
			if Rs("CardReceiptStat")="승인" then 
				call alertMsgBack( "이미 카드 결제를 하셨습니다." )
				Rs.Close
				Dbcon.close
				Response.End      		
			end if      
		'----------------------------------------------------------------------------
		elseif(AppliKind="전문가") then  '전문가 , 단기      		
			if Rs("SelectResult")<>"합격" and Rs("SelectResult")<>"미전형" then
				call alertMsgBack( "전형결과를 확인하여주십시요\n합격한 지원자에 한하여 접수를 하실 수 있습니다." )
				Rs.Close
				Dbcon.close
				Response.End
			elseif Rs("CardReceiptStat")="승인" then
				call alertMsgBack( "이미 카드 결제를 하셨습니다." )
				Rs.Close
				Dbcon.close
				Response.End
			end if
		else
			if Rs("SelectResult")<>"미전형" then
				call alertMsgBack( "(" & Rs("SelectResult") & ") " & "전형결과를 확인하여주십시오\n합격한 지원자에 한하여 접수를 하실 수 있습니다." )
				Rs.Close
				Dbcon.close
				Response.End
			elseif Rs("CardReceiptStat")="승인" then
				call alertMsgBack( "이미 카드 결제를 하셨습니다." )
				Rs.Close
				Dbcon.close
				Response.End      		
		end if


		end if

		AppliType=Rs("AppliType")
		Yearmonth=Rs("Yearmonth")
		Tel=Rs("Telephone")
		email=Rs("Email")
				
		sql="select CourseName,Money From Course Where Courseid = '"&Rs("CourseID")&"' "
		Set Rs1 = Dbcon.Execute(sql)
		  
		strCoruse="["& AppliKind &"]" & Rs1("CourseName")
		Money=Rs1("Money")
		Rs1.Close 
				
		Rs.Close
	%>
	<form name="inicis" method="post" action="/Register/card_pay_ok.asp">
		<!-- DB에 저장하기 위한 지원서의 key값들 -->
		<input type=hidden name=applikind value=<%=applikind%>>
		<input type=hidden name=yearmonth value=<%=yearmonth%>>

		<div id="Wrapper">
			<!-- Header_Wrap -->
			<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
			<!-- //Header_Wrap -->

			<div id="Container_Wrap" style="min-height:700px;">
				<div id="Content_Wrap">
					<!-- SNB_Wrap-->
					<!-- #include virtual = "/Include/SNB_Register_1709.asp"-->
					<!-- //SNB_Wrap-->
					
					<!-- con_wrap1709 -->
					<div id="Content">
						<div class="hGroup1709">
							<p>
								<img src="/Images/Icons/icn_Home.png"/>
								<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>수강신청
							</p>
							<h4>카드결제</h4>
						</div>

						<section class="section">
							<!-- con_wrap1709 -->
							<div class="con_wrap1709 first">
								<p class="mar_b10">
									<span class="redTxt" style="text-decoration:underline; font-size:1.2em;"><b>플러그인의 설치를 완료하신 후에 "지불"을 눌러주세요.</b></span>
								</p>
								<p class="mar_b10">
									플러그인은 이 페이지가 열리면서 자동으로 다운로드 되어 설치됩니다.<br>
									다운로드에 다소 시간이 걸릴 수 있으므로, 보안경고창이 나타날 때까지 기다려 주세요.
								</p>
								<p class="mar_b10">
									플러그인은 지불정보를 안전하게 암호화하는 역할 이외에 어떠한 용도로도 사용되지 않습니다.
								</p>
								<p class="mar_b10">
									만일 플러그인 설치가 되지 않는 경우에는 "수동설치" 버튼을 눌러서 플러그인을 설치해주세요. 
									<!--<a href="http://download.inicis.com/archive/INIpayplugin128_v4.exe" class="btnBlueBorder">수동설치</a>-->
									<a href="https://www.inicis.com/blog/archives/496" class="btnBlueBorder">수동설치</a>
								</p>
								<p class="mar_b10 blueTxt" style="line-height:24px;">
									※ 결제에 사용되는 플러그인은 Internet Explorer(IE) 11<img src="Images/ie.jpg" style="width:24px;"/> 환경을 권장합니다.
								<p>
								<!--<h5>카드결제</h5>-->
								<!--
								<p>
									<span class="redTxt"><b>반드시 플러그인의 설치를 완료한 후에 "지불"을 누르십시오.</b></span><br>
									플러그인은 이 페이지에 접근하는 순간 자동으로 다운로드 되어 설치됩니다.<br>
									다운로드에 다소 시간이 걸리는 수도 있으니 보안경고창이 나타날 때까지 기다려 주시기 바랍니다. <br>
								</p>
								<p>
									플러그인은 지불정보를 안전하게 암호화하는 역할 이외에는 어떠한 용도로도 사용되지 않습니다.<br>
									만일 플러그인 설치가 되지 않는 경우에는 <a href="http://download.inicis.com/archive/INIpayplugin128_v4.exe" class="blueTxt"><u>여기</u></a>를 눌러서 플러그인을 설치하십시오.
								</p>
								-->
							</div>
							<!-- //con_wrap1709 -->
							
							<!-- con_wrap1709 -->
							<div class="con_wrap1709">
								<p class="mar_t40 brownTxt">
									다음의 정보를 확인하신 후 "결제" 버튼을 눌러주세요.
								<p>
								<style>
									.divTable table tr td input {
										font-size:1.1em; 
										padding:3px;
									}
								</style>
								<div class="divTable">
									<table>
										<colgroup>
											<col style="width:30%">
											<col style="width:70%">
										</colgroup>
										<tbody>
											<tr>
												<td scope="row" class="darker c">과정명</td>
												<td><input name="goodname" size="55" value="<%=strCoruse%>" readonly></td>
											</tr>
											<tr>
												<td scope="row" class="darker c">카드결제액</td>
												<td>
													<% IF AppliKind="전문가" THEN %>
														<input type=text name="price" size="23"  value="<%=money%>"  readonly>
														
		
		<%
'		ELSEIF StudID = 58669 THEN
		' 김유준 58669 부산외대 고급과정5기 (2018-03부터) 3,200,000 -> 600,000 * 5 + 200,000 * 1 (총 6회)분할납부
		' 이번 달부터(2018년3월) 총 5번의 분할납부를 할 예정이며, 600,000원 * 4번 / 200,000원 * 1회 형식으로 진행예정...
		' NoNo. 현금으로 2회차까지 미리 받았다고 함.
		' 1회차 600,000 (2018-03-23) / 2회차 600,000 (2018-05-28) / 3회차 600,000 (2018-06-26) / 4회차 200,000 (2018-07-31 결제확인). 끝.
		'//<input type="text" name="price" class=txt size=30 value="200000" readonly>
		%>
		

													<% ELSE %>
														<input type=text name="price" size="23" value="<%=money%>" readonly>
													<% END IF%>		
												</td>
											</tr>
											<tr>
												<td scope="row" class="darker c">성명</td>
												<td><input name="buyername" size="25" value="<%=session("NameHan")%>" readonly></td>
											</tr>
											<tr>
												<td scope="row" class="darker c">전화번호</td>
												<td><input name="buyertel" size="25" value="<%=Tel%>" readonly></td>
											</tr>
											<tr>
												<td scope="row" class="darker c">E-Mail</td>
												<td><input name="buyeremail" size="25" value="<%=Email%>" readonly></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="c mar_t20 mar_b20">
									<input type="button" value="결제" onclick="javascript:pay(this.form)" class="txt btnBlueBorder big mar_r10">
									<input type="button" value="취소" onclick="javascript:goIndex(this.form)" class="txt btnWhiteBorder big">
								</div>
								
								<!-- mid : 머천트 아이디 발급 후 변경 -->
								<input type=hidden name=mid value="bitcampus1">

								<!-- 화폐단위 -->
								<input type=hidden name=currency value="WON">
								<!--input type=hidden name=currency value="USD"-->

								<!-- 무이자 할부 미시행 -->
								<input type=hidden name=nointerest value="no">
								<!-- 무이자 할부 시행 -->
								<!--input type=hidden name=nointerest value="yes"-->

								<!-- 플러그인 창에서 선택가능한 카드할부기간 지정 -->
								<!-- (각 카드사별로 지원 가능한 개월수가 다르므로 유의) -->
								<input type=hidden name=quotabase value="일시불:2개월:3개월:4개월:5개월:6개월:7개월:8개월:9개월:10개월:11개월:12개월">

								<!-- 기타설정 -->
								<!-- 본인인증 : VERIFY(함) / NOVERIFY(안함) -->
								<!-- 가맹점구분 : NOSELF(대표가맹) / SELF(자체가맹) -->
								<!-- 지불방법선택 : DC(증권카드) / VC(버추얼카드) / MX(Mondex) / OCB(OK Cashbag Point) -->
								<input type=hidden name=acceptmethod value="VERIFY">

								<!-- 아래의 필드는 절대 삭제/수정 불가 -->
								<input type=hidden name=quotainterest value="">
								<input type=hidden name=paymethod value="">
								<input type=hidden name=cardcode value="">
								<input type=hidden name=cardquota value="">
								<input type=hidden name=rbankcode value="">
								<input type=hidden name=reqsign value="DONE">
								<input type=hidden name=encrypted value="">
								<input type=hidden name=sessionkey value="">
								<input type=hidden name=uid value="">
								<input type=hidden name=sid value="">
								<input type=hidden name=version value=4000>
								<input type=hidden name=clickcontrol value="">
								<input type=hidden name=gopaymethod value="Card">
								<!-- 몬덱스 사용시 반드시 수정 -->
								<input type=hidden name=mdxurl value="http://www.demo.com/asp/INImdx.exe">
							</div>
							<!-- //con_wrap1709 -->

							<style>
								.linkUnpaid {
									font-size:12pt;
									line-height:24px;
									color:red;
									text-decoration:underline !important;
								}
							</style>
							<div class="con_wrap1709 mar_b20">
								<input type="button" value="> 다른 과정 결제" onclick="javascript:showUpTheUnpaid();" class="btnRedBorder" style="float:right;" />
								<div style="clear:both;"></div>
								<div id="divListUnpaid" class="mar_t20" style="width:80%; box-shadow:1px 1px 3px #000000; display:none; float:right;">
<%
								sql = "select top 10 a.ApplicationDate Date,c.CourseName CName, a.CourseID CID " &_
									"from db_bit.dbo.Application a left outer join db_bit.dbo.Course c " &_
									"on a.CourseID=c.CourseID " &_
									"where StudID=51955 " &_
									"order by a.ApplicationDate desc"
								
								Set Rs2 = Dbcon.Execute(sql)
								if not Rs2.EOF then										
									Rs2.MoveFirst 							
									DO While not Rs2.EOF
										Response.Write "<a class='linkUnpaid mar_l20' href='/Register/card_approvalv2.asp?CID=" & Rs2("CID") & "'>" & "신청일 : " & Rs2("Date") & " / " & Rs2("CName") & "</a><br/>"
'										If DUTY_CD = Trim(Rs("CourseID")) Then 
'											Response.Write "<option value='"& Rs("CourseID") & "' selected>"
'										Else
'											Response.Write "<option value='"& Rs("CourseID") & "'>"												
'										End If 												
'										Response.Write Rs("CourseName") & "</option>"
										Rs2.MoveNext 
									loop
								end if
								Rs2.Close
%>
								</div>
								<div style="clear:both;"></div>
							</div>
							
							<!-- con_wrap1709 -->
							<div class="con_wrap1709">
								<p>
									"결제" 버튼을 누르시면 지불 정보를 안전하게 암호화하고 결제를 도와드리는 INIPAY Plugin 128이 시작됩니다.<br>
									INIPAY Plugin 128에서 필요한 정보를 모두 기입하신 후 "확인" 버튼을 누르면 결제 처리가 완료됩니다.<br>
									INIPAY Plugin 128 시스템의 사정에 따라 다소 시간이 걸릴 수도 있으니 "중지" 버튼을 누르지 마시고 잠시만 기다려주세요.
									<!--
									"지불"버튼을 누르면 지불정보를 안전하게 암호화하기 위한 INIPAY Plugin 128이 나타납니다.<br>
									필요정보를 모두 기입한 후, "확인" 버튼을 누리면 지불처리가 시작됩니다.<br>
									지불시스템의 사정에 따라 다소 시간이 걸릴 수도 있으니 "중지"버튼을 누리지 마시고 잠시만 기다려주십시오.
									-->
								</p>
							</div>
							<!-- //con_wrap1709 -->
							
						</section>
						<!--<a href="#this" class="moveTop">Top</a>-->
					</div>
					<!-- //con_wrap1709 -->
				</div>
			</div>
			<!-- Footer_Wrap -->
			<!-- #include virtual="/Include/FooterHTML1709.asp"-->
			<!-- //Footer_Wrap -->
		</div>
	</form>
</body>
</html>
