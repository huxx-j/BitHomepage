<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(getIndex("MILEAGE")).addClass("on");
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">마일리지 쿠폰 안내</span></h3>
				<h4>12월 교육과정부터 총  교육비의 5%를 적립</h4>
			</div>
		</div>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl">마일리지 쿠폰 안내</h4>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">단기 / 핵심역량과정</a>
							<a href="#this" class="last on">마일리지 쿠폰 안내</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap pd_t10">
							<img src="/Images/Content/img_mileage_01.jpg" alt="">
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap type1">
							<div class="txtBox">
								<p>비트교육센터에서는 12월 교육과정부터 <span class="redTxt">총 교육비의 5%를 적립</span>하여 주는 마일리지 쿠폰제도를 시행합니다! <br>
								교육비 지급 주체에 따라 개인 및 기업이 마일리지 쿠폰을 받으실 수 있습니다.<br>

								받으신 쿠폰은 추후 과정 수강시에 언제든지 사용 가능하며 양도하여 사용도 할 수 있으니, 많은 이용 바랍니다.
								</p>
							</div>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap type1">
							<h5>1.	마일리지 쿠폰 발행 금액</h5>
							<div class="txtBox">
								<p>- 수강하신 과정의 교육비에 대한 총 5% 지급</p>
								<p>Ex) C Programming Master  I 과정 수강 : 40만원 결제하고 과정 종료 시 2만원 쿠폰 지급</p>
								<p>- 교육비 결제하고 과정 수강 시 출석률 80% 이상 달성하여야 하며, 과정 종료 시점에 지급</p>
							</div>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap type1">
							<h5>2.	마일리지 쿠폰 발행 대상</h5>
							<div class="txtBox">
								<p>- 교육비 지급 주체에 따라 개인이 지급할 경우 개인이, 기업이 지급할 경우 기업이 쿠폰을 받으실 수 있습니다.</p>
								<ul class="ul_dot_gray">
									<li>기업이 받은 쿠폰은 해당 기업 재직자가 수강시에 사용할 수 있습니다.</li>
									<li>기업 맞춤 및 위탁 교육도 해당합니다.</li>
									<li>재직자지만 개인이 교육비를 부담할 경우 마일리지 쿠폰은 개인에게 지급합니다.</li>
									<li>모든 취업 과정 수료생을 채용한 기업도 인당 5만원씩 지급하고 추후 사용할 수 있습니다</li>
								</ul>
							</div>
						</div>
						<!-- //con_wrap -->
						<div class="con_wrap type1">
							<h5>3.	마일리지 쿠폰 사용</h5>
							<div class="txtBox">
								<ul class="ul_dot_gray">
									<li>추후 과정 수강 시 마일리지 쿠폰 금액을 제한 금액만 결재하고 수강하시면 됩니다.</li>
									<li>마일리지 쿠폰 금액을 사용하여 과정을 수강할 때도 총 교육비의 5% 해당하는 마일리지 쿠폰을 지급합니다.</li>
									<li>쿠폰은 발급일로부터 1년 이내에 사용하셔야 하며, 유효기간 내에 개강되는 과정을 수강 할 때 사용할 수 있습니다.</li>
									<li>마일리지 쿠폰은 직접 방문하여 제출하여야 하고, 지방 비트에서도 사용이 가능합니다(선문비트, 우송비트, 한세비트, 건양비트, 부산비트)</li>
									<li>발행된 쿠폰은 타인에게 양도할 수 있으나, 현금 거래는 불가합니다.</li>
									<li>결제 후 발생한 마일리지 차액에 대해서는 쿠폰으로 다시 발행하여 드립니다.</li>
									<li>마일리지 쿠폰을 사용하여 결재 한 뒤 환불 시에 현금 및 카드 결재 된 금액만큼만 환불 규정에 의해 처리 되며, 사용된 쿠폰은 환불되지 않습니다.</li>
								</ul>
							</div>
						</div>
						<!-- con_wrap -->

						<!-- //con_wrap -->
						<div class="con_wrap type1">
							<h5>4.	마일리지 쿠폰 발행 해당 과정</h5>
							<div class="txtBox">
								<ul class="ul_dot_gray">
									<li>12월 개강된 과정부터 해당됩니다</li>
								</ul>
							</div>
						</div>
						
						<p>마일리지 쿠폰과 관련하여 궁금하신 사항 있으시면,<br>
						홈페이지 Q&A 게시판이나 전화 <span class="redTxt">02-3486-3456</span> 으로 문의주세요
						<p>
						<!--
						<div class="btn_wrap c">
							<a href="/Support/Support_online_list.asp"></a>
						</div>
						-->
					</section>
				</div>
				<a href="#this" class="moveTop">Top</a>
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>