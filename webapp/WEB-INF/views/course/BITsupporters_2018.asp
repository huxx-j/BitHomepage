<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE TO MOBILE -->

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

			$(".snb_1709 a.newdepth1").eq(7).addClass("on");		// SW개발자 후견인 제도
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

<body><!-- style="background:#ffffff;">-->
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_JobCenter_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>SW개발자 후견인 제도
						</p>
						<h4 style="float:left;">SW개발자 후견인 제도</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
					
					<section class="section">
						
						<div class="con_wrap1709">
							<h5>SW개발자 후견인 제도란?</h5>
							<p>
								- 최근 IT분야의 인력난과 청년실업으로 어려움을 겪고 있는 상황에서 기업과 구직자의 미스매칭을 해결하고, SW분야의 생태계 활성화의 일환으로 비트교육센터의 강도 높은 교육과정을 통해 사회에 진출 할 수 있는 인재를 양성하는 대한민국 누구나 참여 가능한 후견인 제도를 실시 합니다.<br/>
								- 후견인이 후견대상자를 추천하여 <b>사회진출에 성공하면</b> 후견인에게 소정의 <b>사은품</b>을 드립니다.
							</p>
						</div>

						<div class="con_wrap1709">
							<h5>후견인의 자격</h5>
							<p>
								- 비트교육센터 교육과정에 인재 추천이 가능한 자<br/>
								<span class="redTxt">※ 예) 기업관계자, 비트수료생, 지인 외 기타</span>
							</p>
						</div>

						<div class="con_wrap1709">
							<h5>후견대상자의 조건</h5>
							<p>
								- SW분야 취업교육을 통해 사회진출 희망자<br/><br/>
								<b>※ 후견인 제도 적용 대상 예시</b><br/>
								- 기업면접 시, 바로 채용이 어려워 취업교육이 필요한 자<br/>
								- 지인 또는 후배 중, SW분야로 취업을 희망하는 자 
							</p>
						</div>

						<div class="con_wrap1709">
							<h5>SW개발자 후견인 특전</h5>
							<p>
								- 상품권 30만원 (교육 수료 후)<br/>
								- 후견대상자 취업 및 교육과정 정보 Feedback<br/>
								- 채용을 희망하는 기업에게 면접우선권 제공
							</p>
						</div>

						<div class="con_wrap1709">
							<h5>후견인 신청방법</h5>
							<p>
								- <b><a class="email" href="/Upload/BITsupporters_apply.docx">후견인 추천서</a></b>를 작성하여 비트교육센터에 <b>이메일(<a href="mailto:job@bit.kr" class="email">job@bit.kr</a>)</b>로 보내주시면 후견대상자에게 연락하여 교육컨설팅 후, 결과를 Feedback 드리겠습니다.
							</p>
						</div>

						<div class="con_wrap1709 last">
							<h5>후견인 제도 담당자</h5>
							<p>
								- 비트교육센터 임지훈 선임<br/>
								- 연락처: 02-3486-1248<br/>
								- E-mail: <a href="mailto:job@bit.kr" class="email">job@bit.kr</a>
							</p>
						</div>

					</section>
					<!--<a href="#this" class="moveTop">Top</a>-->
				</div>
			</div>
			<!-- // Content_Wrap -->
		</div>
		<!-- // Container_Wrap -->
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>