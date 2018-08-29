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

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("CCNA")).addClass("on");
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
				<h3 style="margin-left:75px;"><p class="courseName" style="line-height:40px;">CCNA 입문</p></h3>
				<!--<h4></h4>-->
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
					<table>
					<div class="hGroup">
						<div>
							<h4 class="fl" style="font-size:16px; margin-top:5px;">CCNA 입문</h4>
							<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						</div>
						<div>
							<p class="lineMap">
								<a href="#this">홈</a>
								<a href="#this">과정안내</a>
								<a href="#this">프로그래밍과정 / 핵심역량과정</a>
								<a href="#this" class="last on">CCNA 입문</a>
							</p>
						</div>
					</div>
					</table>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>CCNA 입문</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">CCNA 입문</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<!--<li>2015.10.19 ~ 2015.10.22 (4일 / 총 32시간)</li>-->
													<li>문의</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>09:00 ~ 18:00 (1일 8시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>문의 </td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">근로자카드 / 바우처 : 147,240원 | 사업주 훈련 : 우선지원대상 기업기준 147,240원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
										-->
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->
						
						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_2.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육과정 개요</h5>
							<ul class="ul_dot_gray">
								<li>TCP/IP 통신 프로토콜에 기초한 호스트에서 호스트로의 데이터가 처리 과정을 이해할 수 있다.</li>
								<li>통신 프로토콜, 스위칭, 라우팅 기술에 대한 이론과 실습을 통해 네트워크를 구축할 수 있다.</li>
								<li>IoT 세상의 주요 프로토콜인 IPv6 에 대한 개념을 학습하여 미래 기술에 대한 역량이 향상된다.</li>
							</ul>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="프로세스시각화, 소스코드 시각화, 소스코드 문서화, 프로세스 문서화"></p>-->
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육대상</h5>
							<!--
							<ul class="ul_dot_gray">
								<li></li>
							</ul>
							-->
							<ul class="ul_dot_gray">
								<li>TCP/IP 통신 프로토콜의 개념이 필요하신 분</li>
								<li>네트워크를 처음 접하시는 분</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
<!--
						<div class="con_wrap">
							<h5>교육 대상</h5>
							<ul class="ul_dot_gray">
								<li>관련된 제품 제작에 흥미가 있거나, 이를 주 업무로 시작 하는 인원</li>
							</ul>
						</div>
-->
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<!--
						<div class="con_wrap">
							<h5>선수 과목</h5>
							<ul class="ul_dot_gray">
								<li>C Programming <a href="/Course/ShortCourse/DetailPage/Course_c.asp" class="btn sml blue">저녁반</a></li>
								<li>System Programming <span style="color:blue;">(리눅스 시스템에 대한 전반적인 이해)</span></li>
							</ul>
						</div>
						-->
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육내용</h5>
							<ul class="ul_dot_gray">
								<li>네트워크 개념과 이해</li>
								<li>서브네팅의 필요와 방법</li>
								<li>스위치 네트워크에서의 기술</li>
								<li>라우팅 프로토콜</li>
								<li>주소 변환 기술과 접근 제어 기술</li>
								<li>IPv4 의 한계와 IPv6의 특징</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육효과</h5>
							<ul class="ul_dot_gray">
								<li>데이터 통신의 프로세스를 알 수 있다. </li>
								<li>소규모 네트워크를 구축 및 운영할 수 있다.</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type2" style="width:70%;">
								<caption>HTML5기반 JavaScript, jQuery, jQuery Mobile, AJAX</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:10%">
									<col style="width:60%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">대주제</th>
										<th scope="col">시수</th>
										<th scope="col">교육 내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">네크워크 개념 소개</th>
										<td>5</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>네트워크 개념 및 구성요소</li>
												<li>TCP/IP 프로토콜 </li>
												<li>패킷 전달 과정</li>
												<li>IP 주소 체계 및 서브네팅 (Subnetting)</li>
											</ul>
										</td>
									</tr>

									<tr>
										<th scope="row">스위칭 기술</th>
										<td>9</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>스위칭 개념</li>
												<li>VLAN, Trunk</li>
												<li>Spanning-Tree Protocol</li>
												<li>Aggregation link(Etherchannel)</li>
												<li>Inter-VLAN 라우팅</li>
											</ul>
										</td>
									</tr>

									<tr>
										<th scope="row">라우팅 기술</th>
										<td>9</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>라우팅 개념</li>
												<li>정적 경로 설정(Static)</li>
												<li>OSPF </li>
											</ul>
										</td>
									</tr>

									<tr>
										<th scope="row">인터넷 연결과 접근 제어</th>
										<td>5</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>주소 변환 기술(Network Address Translation)</li>
												<li>네트워크 접근 제어(Access-Control)</li>
											</ul>
										</td>
									</tr>

									<tr>
										<th scope="row">IPv6 </th>
										<td>4</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>IPv4의 한계와 IPv6 의 필요성</li>
												<li>IPv6 주소 형태</li>
												<li>ICMPv6 </li>
											</ul>
										</td>
									</tr>
									
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.3456 (bithrd@bit.kr)</p>
						</div>
						<!-- con_wrap -->
						
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1">지원하기</a>
						</div>
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