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
			//$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1709 a.newdepth1").eq(4).addClass("on");
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<style>
	.step_wrap {
		width:580px;
	}
	</style>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:210px;">
			<div id="Content_Wrap" style="min-height:210px;">
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
						<h4 style="float:left;">비트출신 장점</h4>
						<div style="clear:both; height:10px;"></div>
					</div>

					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap1709 first">
							<ul>
								<li class="step_wrap">
									<p class="stepNum">Step.1</p>
									<p class="stepTit pd_t0">대한민국 벤처1호 조현정 대표의 정신을 이어 받는다.</p>
									<p class="stepCon">대한민국 벤처1호 (주)비트컴퓨터 조현정 대표이사의 벤처정신을 이어 받아 청년  IT인으로 성장 가능한 인재를 까다로운 필기전형 및 대표이사 면접을 통한 선발함으로써 벤처 정신을 대몰림 한다.</p>
								</li>
								<li class="step_wrap">
									<p class="stepNum">Step.2</p>
									<p class="stepTit">Group Study 및 Project 수행으로 실무에 강하다</p>
									<p class="stepCon">6개월의 '그룹스터디'와 팀별 '인턴십 프로젝트' 수행을 통해 팀워크의 중요성과 조직력 배양기간을 거쳐 실무 투입이 확실한 인재로 거듭난다.</p>
								</li>
								<li class="step_wrap">
									<p class="stepNum">Step.3</p>
									<p class="stepTit">비트프로젝트로 탄생한 신기술도 기술공유의 원칙을 지킨다.</p>
									<p class="stepCon">&lt;인턴십 프로젝트&gt; 수행 결과를 프로젝트 발표회를 통해 공개하고 &lt;비트프로젝트&gt; 단행본으로 출간해 개발한 신기술은 공유함을 배운다.</p>
								</li>
								<li class="step_wrap">
									<p class="stepNum">Step.4</p>
									<p class="stepTit">비트리콜제로 재교육 및 평생교육까지 확실하다.</p>
									<p class="stepCon">&lt;비트리콜제&gt;를 통해 실무 투입 시 문제가 발생하는 &lt;비트출신 &gt;은 재교육으로 IT업계의 미래를 주도할 수 있는 인재로 업그레이드한다.</p>
								</li>
								<li class="step_wrap">
									<p class="stepNum">Step.5</p>
									<p class="stepTit">비트정보봉사단 나눔 정신을 몸소 실천한다.</p>
									<p class="stepCon">&lt;비트정보봉사단&gt; 활동으로 이웃과 사회 국가를 위하 봉사할 수 있는 정신을 함양한다.</p>
								</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
					</section>
					<!--<a href="#this" class="moveTop">Top</a>-->
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