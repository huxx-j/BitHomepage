<!DOCTYPE html>
<%
	StrDate = "2017.08.09 ~ 2017.08.31 (오후반)"
	StrTime = "오후반 14:00 ~ 18:00(4시간/총 60시간)"
%>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<!-- 좌측메뉴에 직접적으로 해당 과목을 첨부하기 전에 사용하던 소스
	<script type="text/javascript">
		$(document).ready(function(){
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
		});
	</script>
	-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->
			
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("C2")).addClass("on");
			
			<!--#include file="Common_eventHandlers_btnMenu.inc"-->
			
		});
	</script>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<style>
	/* white and narrowSNB */
	#SNB_Wrap_1702 { background:#ffffff !important; width:195px !important; }
	.moveTop { width:195px !important; background:#17538e url('/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
	.hGroup p { width:333px; }
	#Content_Wrap { min-height:1000px; }
</style>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<a href="#" class="btnMenu fl"><img src="/Images/Common/ico_clipboard2_128.png" style="height:26px; padding:3px; margin:-3px 8px 0 3px; border-radius:8px; box-shadow:0px 0px 5px #373737;" /></a>
						<h4 class="fl">자료구조</h4>
						
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=cdsVacation" class="btn mid green1 fl mar_l10">지원하기</a>-->
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍과정</a>
							<a href="#this" class="last on">자료구조</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap1703 first">
							<div class="form_type1 mar_b20">
								<table style="box-shadow:none !important;">
									<colgroup>
										<col style="width:15%">
										<col style="width:35%">
										<col style="width:15%">
										<col style="width:35%">
									</colgroup>
									<tbody>
										<tr>
											<th>교육기간</th>
											<td><%=strDate%></td>
											<th>강의시간</th>
											<td><%=StrTime%></td>
										</tr>
										<tr>
											<th>교육비용</th>
											<td>394,440원</td>
											<th></th>
											<td></td>
										</tr>
										<tr>
											<th>교육정원</th>
											<td>30명</td>
											<th>문의</th>
											<td>최광원 주임(02-3486-3456)</td>
										</tr>
									</tbody>
								</table>
								<a href="/Register/Request/register_shortCourse.asp?cID=cdsVacation" class="btn mid green1" style="float:right; margin:5px 0;">수강신청</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1703">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>C programming 과정을 수강하신 분</li>
								<li>자료구조에 대해서 자세한 학습이 필요하신분</li>
								<li>프로그래밍 및 소스코드 분석 능력 향상을 원하시는 분</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1703 ">
							<h5>교육내용</h5>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:50%">
									<col style="width:50%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">교육</th>
										<th scope="col">교육내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											자료구조와 알고리즘의 기본 개념 학습<br/>
											리스트의 기본 개념 학습
										</td>
										<td>
											<ul class="ul_dot_gray l">
 												<li>자료구조와 알고리즘</li>
												<li>재귀</li>
												<li>싱글링크드 리스트</li>
											</ul>
										</td>
									</tr>
									
									<tr>
										<td>간단한 정렬들을 비교함으로써 성능이 우수한 정렬의 내부구조를 분석한다.</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>버블,선택,삽입,삽입간접,쉘,퀵(라이브러리퀵),합병</li>
											</ul>
										</td>
									</tr>
									
									<tr>
										<td>환형과 더블링크드 리스트 구조를 학습합니다.</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>환형링크드 리스트</li>
												<li>더블링크드 리스트</li>
											</ul>
										</td>
									</tr>
									
									<tr>
										<td>시스템의 콜 스택을 직접 구현하고 이해합니다.</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>비트처리실습, 시스템 콜 스택, 컴파일러 스택사용예</li>
											</ul>
										</td>
									</tr>
									
									<tr>
										<td>
											큐의 기본개념과 간단한 응용프로램 학습
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>큐,큐를 이용한 직접기수 정렬,커널의더블링크드리스트</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>
											트리 구조의 이해
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>트리, tree정렬, 트리순회, 균형트리</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>
											탐색의 개선과 응용, 이진탐색트리의 개념을 이해한다.
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>순차 탐색, 이진탐색, 이진탐색트리, red-black트리, 해쉬</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>
											그래프의 표현과 저장, 맹목적탐색과 경험적탐색을 학습한다.
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>다익스트라, A-star 알고리즘</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
						
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 &nbsp;(email:egchung@bit.kr)</p>-->
							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
						</div>
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<!--<a href="/Register/Request/register_shortCourse.asp?cID=cdsVacation" class="btn mid green1">지원하기</a>-->
							<!--<a href="/Register/Request/register_shortCourse.asp?cID=cdsVacation" class="btn mid green1">지원하기</a>-->
						</div>
					</section>
				</div>
				<div style="float:right; style="width:160px;">&nbsp;
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