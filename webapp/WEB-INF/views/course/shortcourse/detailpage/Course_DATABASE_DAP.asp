<% CourseName = "국가공인 데이터 아키텍처 전문가(DAP) 자격 검정 준비반" %>
<% strDate="문의" %>


<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720.css" >
	<script src="Common_getIndex.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Course/ShortCourse/DetailPage/Common_eventHandlers_SNB.inc"-->
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			//$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("DATABASE_DAP")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no9").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no9").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no9 li:eq(3) a").addClass("on");

		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<style>
	/* white and narrowSNB */
	#SNB_Wrap_1702 { background:#ffffff !important; width:195px !important; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
	.moveTop { width:195px !important; background:#17538e url('/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	.lineMap { display:none; }
	.table_col_type2 tr td { text-align:left !important; }

</style>

<body style="background:#ffffff;">
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<div class="gnbBg"></div>
		<hr>
		<div class="banner_wrap">
			<div class="banner">
				<h3 class="pd_tow"><span class="courseName"><%=CourseName%></span></h3>
			</div>
		</div>
		<hr>
		<!-- Container_Wrap -->
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl"><%=CourseName%></h4>
						<p class="lineMap" style="width:110px;">
							<a href="http://www.bitacademy.com">홈</a> 
							<a href="#">과정안내</a>
							<a href="#">프로그래밍과정</a>
							<a href="/Course/Expert/Course_DATABASE_DAP.asp" class="last on"><%=CourseName%></a>
						</p>
					</div>
					
					<style>
						.con_wrap1703 table {
							border-top:1px solid #17538e;
						}
						.con_wrap1703 table th {
							height: 25px;
							padding-top: 7px;
							padding-bottom: 7px;
							font-weight: 600;
							color: #333;
							font-size: 13px;
							text-align: left;
							vertical-align: middle;
							background: #f5f5f5;
						}
						.con_wrap1703 table tr th, .con_wrap1703 table tr td {
							font-size:13px !important;
							border-bottom: 1px solid #d1d1d1;
							padding-left: 10px;
						}
						.con_wrap1703 a.btn.mid {
							width:66px; 
							height:32px;
							padding:0 10px !important;
							font-size:13px !important;
							line-height:30px !important;
							border-radius:0;
						}
						.con_wrap1703 h5 {
							font-size:14px !important;
							font-weight:600;
							margin-bottom:5px !important;
						}
						.con_wrap1703 p {
							font-size:13px !important;
						} /* color:#666 !important; size:11pt.*/
						.con_wrap1703 {
							font-family:'Gothic', Arial;
						}
					</style>
					
					<section class="section">
						<!--
						<div class="con_wrap1703 first">
							
							<table style="box-shadow:none !important;">
							</table> 
							<a href="/Register/Request/register_expert1.asp" class="btn mid green1" title="수강신청" style="float:right; margin:5px 0;">수강신청</a>
							<div style="clear;both; height:10px;"></div>
						</div>
						-->
						
						<!-- con_wrap1703 -->
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
											<td>4일 28시간(1일 7h)</td>
										</tr>
										<tr>
											<th>교육비용</th>
											<td>600,000원</td>
											<th>교육비지원</th>
											<td>비환급과정</td>
										</tr>
										<tr>
											<th>교육정원</th>
											<td>20명</td>
											<th>문의</th>
											<td>최광원 주임(02-3486-3456)</td>
										</tr>
									</tbody>
								</table> 
								<a href="/Register/Request/register_shortCourse.asp?cID=Database_DAP" class="btn mid green1" title="수강신청" style="float:right; margin:5px 0;">수강신청</a>
								<div style="clear;both; height:10px;"></div>
																
							</div>
							
						</div>
						<!-- //con_wrap1703 -->
						<div style="clear:both;"></div>
						
						<!-- con_wrap1703 -->
						<div class="con_wrap1703" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>과정소개</h5>
							<p>
								최근 기업의 정보화 전략을 둘러싼 화두는 단연 전사아키텍처(EA, Enterprise Architecture)입니다. 특히 전사아키텍처의 구성요소 중 데이터아키텍처(DA, Data Architecture)가 가장 중요하게 인식되고 있습니다. 데이터아키텍처는 정보시스템을 구성하는 기본 요소인 데이터에 연관된 모든 계층을 총망라한 체계적인 방법입니다. 정보시스템의 근간을 체계화하는 데이터아키텍처의 중요성에 비해 이에 대한 전문적 지식을 갖춘 인재는 상대적으로 매우 빈약한 현실입니다. 이에 데이터 요건분석, 데이터 표준화, 데이터 모델링, 데이터베이스 설계와 이용, 데이터 품질 관리를 수행하는 전문 능력을 갖춘 인재를 양성하여 직업 기회 제공 및 사회적 지위(취업, 승진, 보수 등)의 향상을 도모합니다. 
							</p>
						</div>
						<!-- //con_wrap1703 -->

						<style>
							.aRoadmap {
								border-radius:5px;
								border:1px solid #848484;
								padding:3px;
							}
							.pRoadmap {
								margin-top:10px;
							}
						</style>
						<!-- con_wrap1703 -->
						<div class="con_wrap1703">
							<h5>과정 로드맵</h5>
							<div style="margin-left:80px;">
								<p class="pRoadmap" style="letter-spacing:-1px;">
									<a href="" class="aRoadmap">국가공인 데이터 분석 준전문가 자격(ADsP) 검증 준비반</a> 
									→ 
									<a href="" class="aRoadmap">국가공인 데이터 아키텍처 전문가자격(DAP) 검증 준비반</a>
								</p>
							</div>
						</div>
						<!-- //con_wrap1703 -->

						<!-- con_wrap1703 -->
						<div class="con_wrap1703">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>국가공인 데이터 아키텍처 전문가 자격검증(DAP) 준비반</li>
								<li>응시 자격<br/>※ 학력/경력 기준 또는 자격 기준 중 한가지 요건이 충족될 경우 응시자격 부여(시험일 기준)</li>
							</ul>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:25%">
									<col style="width:75%">
								</colgroup>
								<thead>
									<tr>
										<th class="c" colspan="2">응시자격</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th>학/경력 기준</th>
										<td>
											- 박사학위 이상 취득한 자<br/>
											- 석사학위 취득 후 정보처리분야의 실무경력 1년 이상인 자<br/>
											- 학사학위 취득 후 정보처리분야의 실무경력 3년 이상인 자<br/>
											- 전문대학 졸업한 후 정보처리분야의 실무경력 6년 이상인 자 <br/>
											- 고등학교 졸업한 후 정보처리분야의 실무경력 9년 이상인 자
										</td>
									</tr>
									<tr>
										<th>자격 기준</th>
										<td>
											- 국가기술자격 중 기술사 자격을 취득한 자<br/>
											- 국가기술자격 중 기사 자격을 취득한 후 정보처리분야의 실무경력 1년 이상인 자<br/>
											- 국가기술자격 중 산업기사 자격을 취득한 정보처리분야의 실무경력 4년 이상인 자<br/>
											- 학사학위 취득자 중 해외 데이터베이스관련 자격을 취득한 자<br/>
											- 데이터아키텍처 준전문가(DAsP) 자격을 취득한 자
										</td>
									</tr>									
								</tbody>
							</table>
							<br/>
							<span style="margin-left:5px;"> ※ 상기 응시자격 항목에서 국가기술자격 및 데이터베이스관련 자격</span><br/>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:100%">
								</colgroup>
								<tbody>
									<tr>
										<th class="c">국가기술자격</th>
									</tr>
									<tr>
										<td>
											국가기술자격법 시행규칙 [별표2] 정보통신 분야 자격
										</td>
									</tr>
									<tr>
										<th class="c">해외 데이터베이스 관련 자격</th>
									</tr>
									<tr>
										<td>
											- IBM, Microsoft, Oracle, Sybase 등의 해외 DBMS 기업들이 인증하는 데이터베이tm 관련 자격<br/>
											- 데이터아키텍처 전문가(DAP) 및 준전문가(DAsP)
										</td>
									</tr>
									
								</tbody>
							</table>
									
						</div>
						<!-- //con_wrap1703 -->

						<!-- con_wrap1703 -->
						<div class="con_wrap1703 ">
							<h5>교육내용</h5>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:10%">
									<col style="width:35%">
									<col style="width:55%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="c">교육일정</th>
										<th scope="col" class="c">주제</th>
										<th scope="col" class="c">교육내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="3" class="c">1일</th>
										<td>
											전사 아키텍처 이해
										</td>
										<td>
											- 전사아키텍처 개요<br/>
											- 전사아키텍처 구축<br/> 
											- 전사아키텍처 관리 및 활용
										</td>
									</tr>
									<tr>
										<td>
											데이터 요건분석
										</td>
										<td>
											- 데이터 요구사항에 대한 분석<br/>
											- 요구 사항 검증 방법에 필요한 작업 수행 
										</td>
									</tr>
									<tr>
										<td>
											데이터 표준화
										</td>
										<td>
											- 데이터 표준화를 위한 구성요소 파악<br/>
											- 데이터 표준화 원칙 수립<br/>
											- 데이터 품질 유지를 위한 사후관리 
										</td>
									</tr>
									
									<tr>
										<th scope="row" class="c">2일</th>
										<td rowspan="2">
											데이터 모델링
										</td>
										<td rowspan="2">
											- 개념 데이터 모델링 수행 <br/>
											- 논리 데이터 모델링 수행 <br/>
											- 물리 데이터 모델링 수행 
										</td>
									</tr>
									
									<tr>
										<th scope="row" class="c">3일</th>
									</tr>
									
									<tr>
										<th scope="row" class="c">4일</th>
										<td>
											데이터 설계와 이용
										</td>
										<td>
											- 범용적인 데이터베이스 설계<br/>
											- 데이터베이스 이용<br/>
											- 데이터베이스 성능 개선 수행
										</td>
									</tr>
								</tbody>
							</table>
							
							<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
						</div>
						<!-- con_wrap1703 -->

					</section>
					<a href="#this" class="moveTop">Top</a>
				</div>
			</div>
			<!-- // Content_Wrap -->
		</div>
		<!-- // Container_Wrap -->
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>