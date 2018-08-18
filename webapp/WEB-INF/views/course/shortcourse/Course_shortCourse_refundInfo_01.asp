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
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");
			
			//document.body.scrollTop = document.body.scrollHeight;
			var height = document.body.scrollHeight;
			$( 'html, body' ).stop().animate( { scrollTop : height } );
		});
	</script>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:450px;">
			<div id="Content_Wrap" style="min-height:450px;">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_RefundInfo_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>홈
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>고용보험환급안내
						</p>
						<h4 style="float:left;">환급안내 - 근로자 직무능력향상</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
					
					<section class="section">
						<div>
							<!-- con_wrap -->
							<div class="con_wrap1709 mar_t30 " style="margin-left:66px;">
								<div class="refundList_wrap" style="WIDTH:654px;">
									<div class="refundCon">
										<h4 style="margin-left:3px; margin-top:55px; letter-spacing:-0.5px;"><a href="/Course/shortCourse/Course_shortCourse_refundInfo_01.asp">근로자 직무능력향상 <br> 정규직 80% <br> 비정규직 100%</a></h4>
										<p class="conTxt" style="margin-top:67px;"><a href="/Course/shortCourse/Course_shortCourse_refundInfo_01.asp">우선지원 대상기업 근로자<br>고용보험 임의가입 자영업자<br>기간제 근로자, 단시간 근로자<br>파견근로자, 일용근로자</a></p>
										<a href="/Course/shortCourse/Course_shortCourse_refundInfo_01.asp" class="btnBlueBorder big mar_t10">상세보기</a>
									</div>
									<div class="refundCon last">
										<h4 style="margin-top:65px;"><a href="/Course/shortCourse/Course_shortCourse_refundInfo_03.asp">사업주 위탁훈련<br>최대 100% 지원</a></h4>
										<p class="conTxt" style="margin-top:75px;"><a href="/Course/shortCourse/Course_shortCourse_refundInfo_03.asp">사업주가 훈련비용을 부담하며 재직<br>근로자 등을 대상으로 직업 훈련을<br>실시하는 경우 고용노동부에서<br>훈련비를 지원</a></p>
										<a href="/Course/shortCourse/Course_shortCourse_refundInfo_03.asp" class="btnBlueBorder big mar_t10">상세보기</a>
									</div>
								</div>
							</div>
							<!-- //con_wrap -->
						</div>
					</section>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>근로자 직무능력향상 지원금이란?</h5>
							<!--<p>고용보험에 가입중인 사업장에 근무하고 있는 재직자근로자가 자비로 교육을 이수한 경우, 국가기관으로 부터 수강료의 일부(80~100%)를 환급 받을 수 있는 제도입니다. 수강료환급은 노동부에서 수강종료 후 한달반 후에 해당 수강생에게 지급됩니다. </p>-->
							<p>
								고용보험을 납부하고 있는 사업장에 근무하고 있는 재직자자가 고용센터를 통해 ‘재직자 내일배움카드’를 발급받아, 교육비를 지원받아 교육을 수강할 수 있는 제도입니다. (최대100%) <br/>
								재직자의 재직 상태에 따라, 자비 부담금 금액은 달라지며 자비부담금만 납부하시면 근로자직무능력향상과정으로 교육 참여가 가능합니다.
							</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>지원대상</h5>
							<!--<p class="redTxt fb mar_b5">※ 본인이 환급대상자 여부가 궁금하신 분들은 비트교육센터(02-3486-3456)으로 문의해주시면 바로 확인해드립니다.</p>-->
							<p class="redTxt fb mar_b5">※ 본인이 환급대상자 여부가 궁금하신 분들은 비트교육센터(02-3486-3456)으로 문의해주시면 바로 확인해드립니다.</p>
							<!--
							<dl>
								<dt>우선지원 대상기업 근로자</dt>
								<dd>고용보험요율의 적용과 고용안정사업 및 직업능력개발사업의 실시에 있어서 우선적으로 고려하여 지원하는 기업(근로복지공단에서 선정) 건설업,광업,운수,창고,통신업 등은 300인이하, 제조업은 500인 이하, 기타산업은 100인 이하일 경우에 해당.</dd>
							</dl>
							<dl>
								<dt>고용보험 임의가입 자영업자 </dt>
								<dd>
									<ul class="ul_dot_gray">
										<li>12.01.22일 이전 가입한 자영업자는 가입일수에 상관없이 훈련과정 수강 가능</li>
										<li>12.01.22일 이후 가입한 자영업자는 고용보험 가입일수가 180일 이상일 것</li>
									</ul>
								</dd>
							</dl>
							<dl>
								<dt>기간제 근로자 (기간제 및 단시간 근로자 보호 등에 관한 법률 제2조 제1호) </dt>
								<dd>기간의 정함이 있는 근로계약을 체결한 자</dd>
							</dl>
							<dl>
								<dt>단시간 근로자 (근로기준법 제2조 제1항 제8호) </dt>
								<dd>주된 일자리에서 1주동안 소정 근로시간이 36시간 미만인 근로자</dd>
							</dl>
							<dl>
								<dt>파견근로자 </dt>
								<dd>파견근로자 보호등에 관한 법률에 의한 파견근로자</dd>
							</dl>
							<dl>
								<dt>일용근로자 </dt>
								<dd>1개월 미만 고용된 근로자로 계좌발급 신청일 이전 90일 이내에 10일 이상의 근로내역이 있는 근로자</dd>
								<dd>[비정규직 근로자는 비정규직 보호법에 의하여 2년 이상 동일 사업장에 근무하는 자는 지원대상에 해당되지 않음]</dd>
							</dl>
							-->
							<ul class="ul_dot_gray">
								<li>우선지원 대상기업 근로자고용보험요율의 적용과 고용안정사업 및 직업능력개발사업의 실시에 있어서 우선적으로 고려하여 지원하는 기업(근로복지공단에서 선정) 건설업,광업,운수,창고,통신업 등은 300인이하, 제조업은 500인 이하, 기타산업은 100인 이하일 경우에 해당.고용보험 임의가입 자영업자 12.01.22일 이전 가입한 자영업자는 가입일수에 상관없이 훈련과정 수강 가능</li>
								<li>12.01.22일 이후 가입한 자영업자는 고용보험 가입일수가 180일 이상일 것</li>
								<li>기간제 근로자 (기간제 및 단시간 근로자 보호 등에 관한 법률 제2조 제1호) 기간의 정함이 있는 근로계약을 체결한 자단시간 근로자 (근로기준법 제2조 제1항 제8호) 주된 일자리에서 1주동안 소정 근로시간이 36시간 미만인 근로자파견근로자 파견근로자 보호등에 관한 법률에 의한 파견근로자일용근로자 1개월 미만 고용된 근로자로 계좌발급 신청일 이전 90일 이내에 10일 이상의 근로내역이 있는 근로자[비정규직 근로자는 비정규직 보호법에 의하여 2년 이상 동일 사업장에 근무하는 자는 지원대상에 해당되지 않음]</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>지원내용</h5>
							<!--<p>지원한도금액 : 1인당 연간 100만원 한도 내에서 훈련과정에 따라 50 ~ 100% 지원</p>-->
							<p>지원한도금액 : 1인당 연간 200만원 한도 내에서 훈련과정에 따라 50 ~ 100% 지원</p>
							
							<!--<p class="mar_b10">※ 단, 재직자 내일배움카드에 따른 지원금과 근로자 직무능력향상 지원금에 따른 지원금을 합산하여 연간 100만원, 5년간 300만원 한도내에서 지원 </p>-->
							<p class="mar_b10">※ 단, 재직자 내일배움카드에 따른 지원금과 근로자 직무능력향상 지원금에 따른 지원금을 합산하여 연간 200만원, 5년간 300만원 한도내에서 지원 </p>
							<dl>
								<!--<dt>비트교육센터 훈련구분 : 일반과정 - 수강료의 80%</dt>-->
								<!--<dt>비트교육센터 훈련구분 : 일반과정 - 수강료의 80%훈련비용 기준단가에 의하여 계산된 금액의 80% 한도</dt>-->
								<dd>
									<!--
									<ul class="ul_dot_gray">
										<li>훈련비용 기준단가에 의하여 계산된 금액의 80% 한도</li>
										<li>비정규직 근로자는 한도 제한 없음</li>
										<li>(※ 비정규직 : 기간제근로자, 단시간근로자, 파견근로자, 일용근로자)</li>
									</ul>
									-->
									<ul class="ul_dot_gray">
										<li>비정규직 근로자는 한도 제한 없음</li>
										<li>(※ 비정규직 : 기간제근로자, 단시간근로자, 파견근로자, 일용근로자)<br/>[비정규직 근로자는 비정규직 보호법에 의하여 2년 이상 동일 사업장에 근무하는 자는 지원대상에 해당되지 않음]</li>
									</ul>
								</dd>
								<!--<dd>[비정규직 근로자는 비정규직 보호법에 의하여 2년 이상 동일 사업장에 근무하는 자는 지원대상에 해당되지 않음]</dd>-->
							</dl>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>근로자 직업능력향상훈련 자비부담률</h5>
							<div class="divTable">
								<table>
									<caption>Sw교육바우처과정 자비부담률</caption>
									<colgroup>
										<col style="width:15%">
										<col style="width:15%">
										<col style="width:20%">
										<col style="width:15%">
										<col style="width:15%">
										<col style="width:20%">
									</colgroup>
									<thead>
										<tr>
											<th scope="row" colspan="2">구분</th>
											<th scope="row">자비부담률</th>
											<th scope="row" colspan="2">구분</th>
											<th scope="row">자비부담률</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td colspan="2" class="darker c">고용보험가입 자영엽자</td>
											<td class="c">0%</td>
											<td rowspan="5" class="darker c">중견 <br/>또는 <br/>대기업</td>
											<td class="darker c">비정규직</td>
											<td class="c">0%</td>
										</tr>
										<tr>
											<td rowspan="4" class="darker c">우선지원<br/>대상기업</td>
											<td class="darker c">정규직</td>
											<td class="c">20%</td>
											<td class="darker c">이직예정자</td>
											<td class="c">20%</td>
										</tr>
										<tr>
											<td class="darker c">비정규직</td>
											<td class="c">0%</td>
											<td class="darker c">무급 휴직자</td>
											<td class="c">0%</td>
										</tr>
										<tr>
											<td class="darker c">이직예정자</td>
											<td class="c">0%</td>
											<td class="darker c">50세이상 정규직</td>
											<td class="c">20%</td>
										</tr>
										<tr>
											<td class="darker c">무급 휴직자</td>
											<td class="c">0%</td>
											<td class="darker c">3년간 미참여자</td>
											<td class="c">20%</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->
						
						
						
						<!-- con_wrap -->
						<div class="con_wrap1709 last">
							<h5>훈련절차 및 환급안내</h5>
							<dl class="last">
								<dd>
									1. 재직자 내일배움카드 발급신청을 합니다. (교육시작 2주전까지 발급신청 권장)<br/>
								  <span style="margin-left:13px;">온라인- www.hrd.go.kr </span><br/>
								  <span style="margin-left:13px;">오프라인- 관할고용센터</span><br/>
								</dd>
								<dd>
									2. 수강신청시 '근로자직무향상'으로 지원서 작성 후 원하시는 과정으로 신청합니다.<br/>
									<span style="margin-left:13px;">신청서 보내실곳 : <a href="mailto:bithrd@bit.kr" class="email">bithrd@bit.kr</a></span>
								</dd>
								<dd>
									3. 교육시작 이틀 전까지 근로자직무향상 과정 신청서와 교육비를 납부합니다. <br/>
									<span style="margin-left:13px;">※ 교육비는 자비부담금으로 납부하셔야합니다. (본인명의카드 or 본인명의 계좌이체 중 선택 납부)</span>
								</dd>
								<dd>
									4. 교육종료 시점에서 소정출석일수가 교육일수의 80% 미만일 경우 아래와 같이 적용됩니다.<br/>
									<span style="margin-left:13px;">1회 미수료 시 - 한도 20만원 차감</span><br/>
									<span style="margin-left:13px;">2회 미수료 시 - 한도 30만원 차감</span><br/>
									<span style="margin-left:13px;">3회 미수료 시 - 수강제한 및 1년 카드발급제한 </span><br/>
								</dd>
								<dd>
									<br/><span class="blueTxt">* 수강신청 후 연락 주시면 환급에 대해 상세하게 안내해드립니다.</span>
								</dd>
							</dl>
							
							<!--
							<h5>훈련절차 및 환급안내</h5>
							<p>수강신청시 '재직자환급'으로 지원서 작성 후 자비로 교육비를 납부합니다.</p>
							<p>학습종료 후 훈련비 신청을 위해 근로자 수강지원금 지급 신청서를 비트교육센터에 제출합니다. (e-mail : kimyj0723@bit.kr)</p>
							<p class="redTxt fb">단, 소정훈련과정의 출석률이 80%이상일 경우에만 환급가능 </p>
							<ul>
								<li>1. 개인 수강지원 훈련지원서 (비트교육센터 양식 - 교육 전 제출) </li>
								<li>2. 결제내용첨부(카드 영수증 또는 현금영수증 또는 입금내역 표시된 통장사본 또는 인터넷뱅킹 조회서비스 입금내역 출력)</li>
								<li>3. 환급받으실 통장사본 (본인명의)</li>
								<li>4. 계약근로자일 경우 근로계약서 사본제출 / 파견근로자일 경우 파견근로계약서 사본제출<br>훈련이력조회 : http://www.hrd.go.kr > my page 이력조회가능 </li>
							</ul>
							<p>* 수강신청 후 연락 주시면 환급에 대해 상세하게 안내해드립니다.</p>
							-->
						</div>
						<!-- //con_wrap -->
						
						<div class="btn_wrap c" style="padding:30px;">
							<!--
							<a href="/Upload/employ.zip" class="btn mid green1">훈련비 신청서류 다운</a><br/>
							<a href="/Upload/개인정보수집이용_동의서(근로자).zip" class="btn mid green1" style="margin-top:10px;">개인정보수집이용 동의서 다운</a>
							-->
							<a href="/Upload/employ2.zip" class="btnGreenBorder big">훈련비 신청서류 다운</a><br/>
						</div>
					</section>
				</div>
				<!--<a href="#this" class="moveTop">Top</a>-->
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>