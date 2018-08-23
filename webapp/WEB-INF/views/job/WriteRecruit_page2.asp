<!DOCTYPE html>
<!--METADATA TYPE= "typelib"  NAME= "ADODB Type Library"  FILE="C:\Program Files\Common Files\SYSTEM\ADO\msado15.dll"  -->
<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
  Response.Expires = -1 
  Response.Expiresabsolute = Now() - 1 
  Response.AddHeader "pragma","no-cache" 
  Response.AddHeader "cache-control","private" 
  Response.CacheControl = "no-cache" 

  response.buffer = TRUE
%>

<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->

<%
Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

<%
	' declare variables for Company table -- ..._ok.asp 에 그대로 전달 (2016-10-24).
	Dim CompName	'회사명
	Dim CompResNum	'사업자등록번호
	Dim Business	'주력사업
	Dim Capital		'자본금
	Dim YearSell	'연매출액
	Dim CompanyStaffNum '회사 직원수
	Dim isStock		'상장여부
	Dim czipcode	'우편번호
	Dim caddr		'회사주소
	Dim HomePage	'홈페이지
	Dim Welfare		'복지사항
	Dim Introduct	'회사소개

	getParam4Company()


    Dim Department,Location,StaffNum,StaffNum_M,StaffNum_F,Operation,DevelopOS,DevelopDB,DevelopLang,chkQuali,QualiMajor
	Dim Job_Type,Intern_Term,Career,Career_Year,Position,salary,Preference
	Dim SelectStep,Paper,Need
	Dim ChargeName,ChargeDept,ChargeTitle,ChargeTel,ChargeFax,ChargeHandphone,ChargeEmail

    getParam()

	Dim IsAgreeLicensePartnership	' 비트자격증 협약여부 'YES' or 'NO'
%>

<html>
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

	<title>비트교육센터 홈페이지에 오신 것을 환영합니다.</title>
	<!-- #include virtual="/Include/Meta.asp"-->

	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<!--#include virtual="/job/WriteRecruit_script.asp"-->
	
	<!--<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">-->
	
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >

	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		var strAgreeYesNo = "";
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			//$(".snb_1702 .newdepth1").eq(1).addClass("on");
			$(".snb_1709 a.newdepth1").eq(1).addClass("on");

			
			$("#btnYes").on("click", function() {
				//$("#btnYes").attr("class","btn green1");
				//$("#btnNo").attr("class","btn white");
				$("#btnYes").attr("class","btnGreenBorder big mar_l20");
				$("#btnNo").attr("class","btnWhiteBorder big mar_l20");
				strAgreeYesNo = "YES";
			});
			$("#btnNo").on("click", function() {
				//$("#btnYes").attr("class","btn white");
				//$("#btnNo").attr("class","btn green1");
				$("#btnYes").attr("class","btnWhiteBorder big mar_l20");
				$("#btnNo").attr("class","btnGreenBorder big mar_l20");
				strAgreeYesNo = "NO";
			});
			
		});
		
	</script>
	
	<link href="/css/main.css" rel="stylesheet" type="text/css">
	<script language='javascript' src='/js/BITobject.js'></script>
	<script language='javascript' src='/js/main.js'></script>

	<script language="JAVAScript">
	function saveit()
	{
		//var FJ = document.form;

		if(strAgreeYesNo == "") {
			alert("협약기업 참여여부를 선택해주세요. (예 / 아니오)")
			return;
		}
		$("#inputIsAgreeLicensePartnership").val(strAgreeYesNo);
		document.form.submit();
		return true;
	}

	</script> 
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

<body onload="window.open('http://www.bitacademy.com/Course/BITsupporters_2018_popup.asp', '_blank', 'width=800, height=700, top=220, left=440, toolbar=no, menubar=no, scrollbars=no, resizable=yes' );  ">
	<style>
		.courseName {
			font-size:15pt !important;
		}
		.detailName {
			font-size:23pt !important;
		}
	</style>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:1570px;">
			<div id="Content_Wrap" style="min-height:1570px;">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_JobCenter_1709.asp"-->
				<!-- //SNB_Wrap-->
				
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>홈
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>취업지원센터
						</p>
						<h4 style="float:left;">구인의뢰 신청</h4>
						<div style="clear:both; height:10px;"></div>
					</div>

					<div id=divMenu>
						<!-- 본문시작 -->
						<div>
							<FORM id="form" name="form" method="post" action="WriteRecruit_ok.asp">
								<input type="hidden" name="CompName" value="<%=CompName%>"/>
								<input type="hidden" name="CompResNum" value="<%=CompResNum%>"/>
								<input type="hidden" name="Business" value="<%=Business%>"/>
								<input type="hidden" name="Capital" value="<%=Capital%>"/>
								<input type="hidden" name="YearSell" value="<%=YearSell%>"/>
								<input type="hidden" name="CompanyStaffNum" value="<%=CompanyStaffNum%>"/>
								<input type="hidden" name="isStock" value="<%=isStock%>"/>
								<input type="hidden" name="czipcode" value="<%=czipcode%>"/>
								<input type="hidden" name="caddr" value="<%=caddr%>"/>
								<input type="hidden" name="HomePage" value="<%=HomePage%>"/>
								<input type="hidden" name="Welfare" value="<%=Welfare%>"/>
								<input type="hidden" name="Introduct" value="<%=Introduct%>"/>
								<input type="hidden" name="Department" value="<%=Department%>"/>
								<input type="hidden" name="Location" value="<%=Location%>"/>
								<input type="hidden" name="StaffNum" value="<%=StaffNum%>"/>
								<input type="hidden" name="StaffNum_M" value="<%=StaffNum_M%>"/>
								<input type="hidden" name="StaffNum_F" value="<%=StaffNum_F%>"/>
								<input type="hidden" name="Operation" value="<%=Operation%>"/>
								<input type="hidden" name="DevelopOS" value="<%=DevelopOS%>"/>
								<input type="hidden" name="DevelopDB" value="<%=DevelopDB%>"/>
								<input type="hidden" name="DevelopLang" value="<%=DevelopLang%>"/>
								<input type="hidden" name="chkQuali" value="<%=chkQuali%>"/>
								<input type="hidden" name="QualiMajor" value="<%=QualiMajor%>"/>
								<input type="hidden" name="Job_Type" value="<%=Job_Type%>"/>
								<input type="hidden" name="Intern_Term" value="<%=Intern_Term%>"/>
								<input type="hidden" name="Career" value="<%=Career%>"/>
								<input type="hidden" name="Career_Year" value="<%=Career_Year%>"/>
								<input type="hidden" name="Position" value="<%=Position%>"/>
								<input type="hidden" name="salary" value="<%=salary%>"/>
								<input type="hidden" name="Preference" value="<%=Preference%>"/>
								<input type="hidden" name="SelectStep" value="<%=SelectStep%>"/>
								<input type="hidden" name="Paper" value="<%=Paper%>"/>
								<input type="hidden" name="Need" value="<%=Need%>"/>
								<input type="hidden" name="ChargeName" value="<%=ChargeName%>"/>
								<input type="hidden" name="ChargeDept" value="<%=ChargeDept%>"/>
								<input type="hidden" name="ChargeTitle" value="<%=ChargeTitle%>"/>
								<input type="hidden" name="ChargeTel" value="<%=ChargeTel%>"/>
								<input type="hidden" name="ChargeFax" value="<%=ChargeFax%>"/>
								<input type="hidden" name="ChargeHandphone" value="<%=ChargeHandphone%>"/>
								<input type="hidden" name="ChargeEmail" value="<%=ChargeEmail%>"/>
								<input id="inputIsAgreeLicensePartnership" type="hidden" name="IsAgreeLicensePartnership" value="" />
								
								<!--
								<div style="text-align:center; font-weight:700; font-size:24pt; margin-top:40px; margin-bottom:60px;">
									<p>기본기가 탄탄한 개발자를 원하십니까?<p>
									<p>기업협약이 답이다!</p>
								</div>
								
								<div>
									<p style="font-family: 'Nanum Gothic Bold'; font-size:16pt; color:#8b6338; margin-bottom:10pt;">BSPM(BIT Software Programming Master) 자격증이란 ?</p>
									<p style="font-size:12pt;">
										BSPM(BIT Software Programming Master)은 자격기본법 제 17조 제2항에 따라 주무부처인 미래창조과학부에 등록하고 한국직업능력개발원에서 승인한 민간자격증입니다.
										본 비트의 BSPM 자격증을 소지한 자는 전문가 수준의 Language 프로그래밍 실력을 갖추었고, 응용 프로그래밍을 개발할 수 있는 수준임을 증명할 수 있습니다.
										SW 기업들과 취업에 있어 이 자격증을 소지한 자를 적극 우대 및 가산점을 적용하는 제도를 진행하고 있습니다.
									<p>
								</div>
								
								<div>
									<img src="/Images/Content/img_BIT_LICENSE_4Recruit.png" style="width:100%; margin-top:40px;"/>
								</div>
								-->
								
								<div style="border:1px solid black;" class="mar_t20">
									<img src="WriteRecruit_page2_1_718px.png" style="width:718px;"/> <!-- becuase of the border, 720 - 2 = 718 -->

									<div style="margin-left:270px; margin-top:0px; margin-bottom:50px;">
										<button id="btnYes" type="button" class="btnWhiteBorder big mar_l20" style="border-width:3px; padding-left:10px; padding-right:10px;">예</button>
										<button id="btnNo" type="button" class="btnWhiteBorder big mar_l20" style="border-width:3px; padding-left:10px; padding-right:10px;">아니오</button>
										<br/>
										<p style="margin-left:0px; margin-top:20px;"><a href="AgreementBSPM.zip" class="btnGreenBorder big" style="border-width:2px;">협약서 양식 다운</button></a>
									</div>
								</div>
								
								
								<div style="border:1px solid black;" class="mar_t20">
									<img src="WriteRecruit_page2_2_718px.png" style="width:718px;"/> <!-- becuase of the border, 720 - 2 = 718 -->
									<p style="margin-left:270px; margin-top:20px;"><a href="AgreementOnChung.zip" class="btnGreenBorder big mar_b40" style="border-width:2px;">협약서 양식 다운</button></a>
								</div>
								
								<div style="border:1px solid black;" class="mar_t20">
									<img src="WriteRecruit_page2_3_718px.png" style="width:718px;"/> <!-- becuase of the border, 720 - 2 = 718 -->
									<p style="margin-left:270px; margin-top:20px;"><a href="AgreementOnIndustry40.zip" class="btnGreenBorder big mar_b40" style="border-width:2px;">협약서 양식 다운</button></a>
								</div>
								
								<div style="margin-top:20px; text-align:center; "> 
									<a href="javascript:saveit();" class="btnBlueBorder big" style="border-width:2px;">작성완료</a>
								</div>
								<div style="clear:both;"></div>
							</form>
						</div>
					</div>
				</div>
			</div>		
		</div>				
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->	
	</div>
		
</body>

</html>

<%
Dbcon.close
Set Dbcon = nothing
%>


<%

SUB getParam4Company()
	CompName = ReForm(TRIM(request("CompName")),0,0) 
	CompResNum = ReForm(TRIM(request("CompResNum")),0,0) 
	Business = ReForm(TRIM(request("Business")),0,0) 
	Capital = ReForm(TRIM(request("Capital")),0,0) 
	YearSell = ReForm(TRIM(request("YearSell")),0,0) 
	CompanyStaffNum = ReForm(TRIM(request("CompanyStaffNum")),0,0) 
	isStock = ReForm(TRIM(request("isStock")),0,0) 
	czipcode = ReForm(TRIM(request("czipcode")),0,0) 
	caddr = ReForm(TRIM(request("caddr")),0,0) 
	HomePage = ReForm(TRIM(request("HomePage")),0,0) 
	Welfare = ReForm(TRIM(request("Welfare")),0,0) 			' 복지사항
	Introduct = ReForm(TRIM(request("Introduct")),0,0) 		' 회사소개
END SUB

SUB getParam()
	Department				= ReForm (TRIM(request("Department")) , 0 , 0 )																			'모집부분
	Location					= ReForm (TRIM(request("Location")) , 0 , 0 )																					'근무지
	StaffNum					= ReForm (TRIM(request("StaffNum")) , 0 , 0 )																				'모집인원 총
	StaffNum_M				= ReForm (TRIM(request("StaffNum_M")) , 0 , 0 )																			'모집인원 남
	StaffNum_F				= ReForm (TRIM(request("StaffNum_F")) , 0 , 0 )																			'모집인원 여
	Operation				= ReForm (TRIM(request("Operation")) , 0 , 0 )																					'담당업무
	DevelopOS				= ReForm (TRIM(request("DevelopOS"))	 , 0 , 0 )																			'사용OS
	DevelopDB				= ReForm (TRIM(request("DevelopDB")) , 0 , 0 )																			'사용DB
	DevelopLang				= ReForm (TRIM(request("DevelopLang")) , 0 , 0 )																		'사용언어
	chkQuali					= ReForm (TRIM(request("chkQuali")) , 0 , 0 )																					'자격요건
	QualiMajor				= ReForm (TRIM(request("QualiMajor")) , 0 , 0 )																				'학과
	Job_Type					= ReForm (TRIM(request("Job_Type")) , 0 , 0 )																				'고용형태
	Intern_Term				= ReForm (TRIM(request("Intern_Term")) , 0 , 0 )																			'인턴기간
	Career					= ReForm (TRIM(request("Career")) , 0 , 0 )																						'경력
	Career_Year				= ReForm (TRIM(request("Career_Year")) , 0 , 0 )																		'경력년수
	Position					= ReForm (TRIM(request("Position")) , 0 , 0 )																					'채용직급
	salary					= ReForm (TRIM(request("salary"))	 , 0 , 0 )																						'급여조건
	Preference				= ReForm (TRIM(request("Preference")) , 0 , 0 )																				'우대조건
	SelectStep				= ReForm (TRIM(request("SelectStep")) , 0 , 0 )																				'전형절차
	Paper					= ReForm (TRIM(request("Paper")) , 0 , 0 )																						'제출서류
	Need					= ReForm (TRIM(request("Need")) , 0 , 0 )																						'요구사항
	ChargeName				= ReForm (TRIM(request("ChargeName")) , 0 , 0 )																		'담당자 성명
	ChargeDept				= ReForm (TRIM(request("ChargeDept")) , 0 , 0 )																			'부서
	ChargeTitle				= ReForm (TRIM(request("ChargeTitle")) , 0 , 0 )																			'직책
	ChargeTel				= ReForm (TRIM(request("ChargeTel")) , 0 , 0 )																				'전화
	ChargeFax				= ReForm (TRIM(request("ChargeFax")) , 0 , 0 )																				'팩스
	ChargeHandphone		= ReForm (TRIM(request("ChargeHandphone")) , 0 , 0 )																'휴대폰
	ChargeEmail				= ReForm (TRIM(request("ChargeEmail")) , 0 , 0 )																		'E-MAIL
	
	'Response.Write "JT : " & Job_Type & "<br/>"
	'Response.Write "chkQuali : " & chkQuali & "<br/>"
END SUB	



Function ReForm (sString , nMaxLen , isNum )
'// Request 로 들어온 변수를 처리한다.
'// sString : 넘겨받는 변수 (string)
'// nMaxLen : 최대 길이 (number)  (최대길이를 검사하지 않은경우 0)
'// isNum  : 숫자인지 아닌지 (1 : only number , 0 : 숫자판별 안함)
	 Dim temp
	 Dim nErr
	 temp = Trim (sString ) & ""

	 if isNum = 1 then	 '숫자판별
		 if isNumeric (temp) = False then
			 response.write ( "ERROR : " & temp & " is Not Number " )
			 response.write ( "<br/>(문의 : 02-3486-3456)")
			 response.End
		 End if
	 end if

	 if nMaxLen > 0 then	 '최대길이 판별
		 if len(temp) > nMaxLen then
			 response.write ( "ERROR : " & temp & " is over Maxlength " & nMaxLen  )
			 response.write ( "<br/>(문의 : 02-3486-3456)")
			 response.end
		 end if
	 end if

	 '// injection 관련 키워드 제거(항목 추가 가능)
	 temp = Replace ( temp , "'" , "" )
	 temp = Replace ( temp , "--" , "" )
	 temp = Replace ( temp , "--, #" , " " )
	 temp = Replace ( temp , "/* */" , " " )
	 temp = Replace ( temp , "' or 1=1--" , " " )
	 temp = Replace ( temp , "union" , " " )
	 temp = Replace ( temp , "select" , " " )
	 temp = Replace ( temp , "delete" , " " )
	 temp = Replace ( temp , "insert" , " " )
	 temp = Replace ( temp , "update" , " " )
	 temp = Replace ( temp , "drop" , " " )
	 temp = Replace ( temp , "on error resume" , " " )
	 temp = Replace ( temp , "execute" , " " )
	 temp = Replace ( temp , "windows" , " " )
	 temp = Replace ( temp , "boot" , " " )
	 temp = Replace ( temp , "-1 or" , " " )
	 temp = Replace ( temp , "-1' or" , " " )
	 temp = Replace ( temp , "../" , " " )
	 temp = Replace ( temp , "unexisting" , " " )
	 temp = Replace ( temp , "win.ini" , " " )	
	 temp = Replace ( temp , "<javascript" , " " )	
	 temp = Replace ( temp , "<script" , " " )	
	 ReForm = temp
End Function


%>

