<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
'// 4[CourseReview] (pre1)
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

CourseID = "CS_core"
%>

<!DOCTYPE html>
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
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			//ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');

			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [서울] 비트교육센터 ON
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [서울] 비트교육센터 SUB - OPEN
			$(".snb_1709 .newdepth3.newwrap.no6").addClass("on").removeClass("plus").addClass("minus");	// C# 프로그래밍 ON 
			$(".snb_1709 .newdepth4_wrap.no6").addClass("on").css('display','block');	// C# 프로그래밍 SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no6 li:eq(0) a").addClass("on");				// 주중반 ON
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<style>
	/* white and narrowSNB */
	#SNB_Wrap_1702 { background:#ffffff !important; width:195px !important; }
	.moveTop { width:195px !important; background:#17538e url('/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
</style>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:initial;">
			
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>단기핵심과정
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[서울]비트교육센터
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>C# 프로그래밍
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>주중반
						</p>
						<h4>C# 프로그래밍</h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<caption>C# Programming</caption>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">C# Programming</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<!--<td>2016.06.02 ~ 2016.06.30 <span class="greenTxt">(저녁반)</span></td>-->
											<!--<td>2016.08.02 ~ 2016.08.30 <span class="greenTxt">(저녁반)</span></td>-->
											<td>(문의)</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!--<span class="blueTxt">1일 3시간 * 20일(총 60시간) </span>-->
												<ul class="ul_dot_gray">
													<!--<li>강의 : 19:00 ~ 22:00(3시간)</li>-->
													<li>(문의)</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<!--<td>350,000원</td>-->
											<td>350,000원 </td>											
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1780 <span class="blueTxt">(재직자 환급 문의)</span> </td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">근로자카드 (정규직 : 279,980원 | 비정규직 : 349,980원) | 사업주 환급 : 최대 349,980원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
										-->
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear:both; height:10px;"></div>
								
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!--
						< ! - - 고용보험환급안내 - - >
						<div class="refundInfo_wrap">
							< ! - - #include virtual="/Common/Tab/refundInfo_languageMaster.asp" - - >							
						</div>
						< ! - - //고용보험환급안내 - - > 
						-->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p>본 과정은 프로그래밍에 관심을 갖고 있지만 처음 접하시는 분, 다른 프로그래밍 언어는 접해 보았지만 C# 언어는 모르시는 분, C# 언어를 배우기는 했지만 정확한 개념이 없는 분들을 대상으로, 기본 문법과 OOP 및 구현까지 체계적으로 학습하는 과정입니다. 이론과 실습을 병행하여 진행하며 C#언어와 OOP의 핵심을 파악하여 다양한 분야의 응용 프로그램을 개발할 수 있는 폭 넓은 지식 및 기술을 습득하여 실무에 적용 가능 하도록 교육하는 과정</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>프로그래머의 기본인 프로그래밍 언어에 대한 자신감 고취 </li>
								<li>OOP 특징을 기반으로 효과적인 설계 및 구현 능력 배양 </li>
								<li>문법, 설계, 구현 능력을 균형있게 교육 (이론:실습 = 3:7) </li>
								<li>NET 기반의 응용 프로그래밍에 필요한 C# 언어 구사 능력 배양</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<caption>C# Programming 커리큘럼</caption>
									<colgroup>
										<col style="width:20%">
										<col style="width:20%">
										<col style="width:60%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">대주제</th>
											<th scope="col">소주제</th>
											<th scope="col">상세내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row" rowspan="4">C# 기본 문법</th>
											<td class="c">소개</td>
											<td>
												<ul class="ul_dot_gray">
													<li>.NET Framework 구조</li>
													<li>C# 콘솔 응용 프로젝트 소스 구조</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">C# 구성 요소</td>
											<td>
												<ul class="ul_dot_gray">
													<li>형식 개요, 변수 개요</li>
													<li>연산자, 제어문</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">형식 개요</td>
											<td>
												<ul class="ul_dot_gray">
													<li>Objec, Boxing과 UnBoxing</li>
													<li>배열, 문자열</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">값 형식</td>
											<td>
												<ul class="ul_dot_gray">
													<li>구조체(정수, 부동 소수점 형식, decimal, bool, 사용자 정의 구조체) 열거형</li>
												</ul>
											</td>
										</tr>

										<tr>
											<th scope="row" rowspan="3">OOP</th>
											<td rowspan="3" class="c">캡슐화</td>
											<td>캡슐화 대상</td>
										</tr>
										<tr>
											<td>메소드 오버로딩과 생성자를 학습한다.</td>
										</tr>
										<tr>
											<td>개체의 멤버와 정적 멤버</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 폐강안내 문구 -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
							</div>
							<div style="clear:both;"></div>

							<!--<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.3456 &nbsp;(kang.i.y@bit.kr)</p>-->
						</div>
						<!-- con_wrap1709 -->
<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=CS_core" class="btn mid green1">지원하기</a>
						</div>
-->						
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