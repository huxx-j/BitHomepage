<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
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

			//$(".snb_1702 .newdepth1").eq(0).addClass("on");
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		
		<div id="Container_Wrap" style="min-height:250px;">
			<div id="Content_Wrap" style="min-height:250px;">
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
						<h4 style="float:left;">비트교육센터 취업지원센터</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
					
					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<p><img src="/Images/Content/img_employment_01_01.jpg" alt="비트교육센터 취업지원센터 안내 - 비트교육센터 취업지원센터는 비트교육센터의 체계적인 취업시스템을 도입하여 SW개발 분야에 특화된 전문 SW취업 사이트로 신입사원채용프로그램을  통해 기업과 인재 모두에게 맞춤형 채용을 제공하고자 합니다."></p>
							<!--<p style="color:#8b6338; font-family:'Nanum Gothic'; font-weight:600;">비트교육센터 취업지원센터를 통하여 인력채용(기업) 및 취업(수료생)을 진행하실 수 있습니다.</p>-->
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>기업</h5>
							<ul>
								<li>1. 취업지원센터는 모든 기업이 이용 가능합니다.</li>
								<li>2. 취업지원센터는 비트교육센터가 직접 선발하고 관리하는 인재만을 추천합니다.</li>
								<li>3. 최종 선발된 인재정보를 비트교육센터에 최종통보한 후, 신입사원으로 채용합니다.</li>
								<li>4. 취업지원센터는 일반채용에 있어 별도의 비용을 요구하지 않습니다. (단, 선발된 인재에 대해 신입사원채용교육 진행시에는 그에 따른 교육비가 청구됩니다.)</li>
							</ul>
							<!--<p class="mar_t20"><img src="/Images/Content/img_employment_01_02.jpg" alt="1. 취업지원센터접속 - www.job.bitacademy.com 회원가입 또는 로그인, 2.인재검색 - 기업맞춤형 인재검색 인재스크랩 및 관리, 3.면접제의 - 인재에게 채용정보제공 참석여부에 따른 채용정보, 4.채용진행 - 면접진행 및 결과발표 결과는 온라인으로 직접연결, 5.채용 - 입사 또는 신입채용프로그램 진행"></p>-->
							<a href="/job/WriteRecruit.asp" class="btnBlueBorder big mar_t20" style="margin-left:255px; font-size:14pt !important;">구인의뢰 신청하기</a>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>수료생</h5>
							<ul>
								<li>1. 취업지원센터는 비트교육센터 회원으로서 <span class="blueTxt">전문가과정 / 국비지원과정 / 대학비트과정 수료자</span>가 이용 가능합니다.</li>
								<li>2. 취업지원센터는 비트교육센터가 직접 선발하고 관리하는 기업정보만을 공개합니다.</li>
							</ul>
							<!--<p class="mar_t20"><img src="/Images/Content/img_employment_01_03.jpg" alt="1.취업지원센터접속 - www.job.bitacademy.com 회원가입 또는 로그인, 3.이력서등록 - 이력서검수 및 공개 취업의 기회부여, 3.면접제의 및 참석 - 참석여부 온라인등록 면접일정 및 상세내용통보, 4.면접진행 및 결과발표 결과는 온라인 및 개별통보, 5.채용 - 입사 또는 신입채용프로그램 진행"></p>-->
							<a href="/job/List.asp" class="btnBlueBorder big mar_t20" style="margin-left:255px; font-size:14pt !important;">채용정보 확인하기</a>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>면접후기</h5>
							<ul>
								<li>생생한 면접후기를 읽어보실 수 있습니다.</li>
							</ul>
							<a href="/job/Interview.asp" class="btnBlueBorder big mar_t20" style="margin-left:255px; font-size:14pt !important;">면접후기 살펴보기</a>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709 last">
							<h5>비트교육센터 취업지원센터 이용문의</h5>
							<ul class="ul_dot_gray">
								<!--<li>homepage : http://job.bitacademy.com</li>-->
								<li>Tel : 02-3486-3456 Fax : 02-3486-7890</li>
								<li>E-mail : <a href="mailto:job@bit.kr" class="email">job@bit.kr</a> </li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
					</section>
				</div>
				<!-- //Content -->
			</div>
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>