<% CourseName = "국가공인 SQL 개발(SQLD) 자격 검정 준비반" %>
<% strDate="2017.09.16(토) ~ 2017.10.21(토) 매주 토요일 09:00~17:00" %>

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
			//$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("DATABASE_SQLD")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no9").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no9").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no9 li:eq(0) a").addClass("on");

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
	#Content_Wrap { min-height:1198px; }
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
						<p class="lineMap">
							<a href="http://www.bitacademy.com">홈</a> 
							<a href="#">과정안내</a>
							<a href="#">프로그래밍과정</a>
							<a href="/Course/Expert/Course_DATABASE_SQLD.asp" class="last on"><%=CourseName%></a>
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
											<td>450,000원</td>
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
								<a href="/Register/Request/register_shortCourse.asp?cID=Database_SQLD" class="btn mid green1" title="수강신청" style="float:right; margin:5px 0;">수강신청</a>
								<div style="clear;both; height:10px;"></div>
																
							</div>
							
						</div>
						<!-- //con_wrap1703 -->
						<div style="clear:both;"></div>
						
						<!-- con_wrap1703 -->
						<div class="con_wrap1703" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>과정소개</h5>
							<p>
								기업 또는 조직의 정보화에 있어서 관계형 데이터베이스는 거의 대부분이라 해도 과언이 아닐 정도로 데이터 저장소의 대부분을 차지하고 있습니다. 소프트웨어를 작성하는데 사용되는 언어는 많은 종류가 있지만 데이터베이스는 결국 SQL에 의해서만 데이터에 접근이 가능하기 때문에 데이터베이스를 기반으로 하는 정보시스템은 SQL 사용이 필수적인 요소입니다. 이 때문에 정보 시스템을 개발하는 수많은 개발자들은 반드시 SQL을 익힐 수 밖에 없고, 이러한 상황에 의해 SQL을 사용할 수 있는 개발자는 그 수를 헤아리기 어려울 정도로 많습니다. 그러나 이와 같은 SQL 사용 능력 보유자 수에도 불구하고 SQL의 수행 원리를 깊이 있게 이해하고 제대로 구사할 수 있는 전문적 지식을 갖춘 인재는 상대적으로 매우 빈약합니다. 이에 데이터모델링에 기본 지식을 바탕으로 SQL 작성, 성능 최적화 등 데이터베이스 개체 설계 및 구현 등에 대한 전문지식 및 실무적 수행 능력을 교육하여 직업 기회 제공 및 사회적 지위(취업, 승진, 보수 등)의 향상을 도모합니다.
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
								<p class="pRoadmap">
									<a href="" class="aRoadmap">국가공인 SQL 개발자(SQLD) 자격 검정 준비반</a> 
									→ 
									<a href="" class="aRoadmap">국가공인 SQL 전문가(SQLP) 자격 검정 준비반</a>
								</p>
							</div>
						</div>
						<!-- //con_wrap1703 -->

						<!-- con_wrap1703 -->
						<div class="con_wrap1703">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>국가공인 SQL 개발자 자격(SQLD) 검정 준비자<br/>※ 응시자격 제한 없음</li>
							</ul>
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
										<th scope="col" class="c">교육</th>
										<th scope="col" class="c">교육내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" class="c">1일</th>
										<td>
											데이터 모델링의 이해
										</td>
										<td>
											- 데이터모델의 이해<br/>
											- 엔터티<br/>
											- 속성<br/>
											- 관계<br/>
											- 식별자
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2" class="c">2일</th>
										<td>
											데이터 모델과 성능
										</td>
										<td>
											- 정규화와 성능<br/>
											- 반정규화와 성능 <br/>
											- 대용량 데이터에 따른 성능 <br/>
											- DB 구조와 성능 <br/>
											- 분산 DB 데이터에 따른 성능
										</td>
									</tr>
									<tr>
										<td>SQL 기본</td>
										<td>
											- 정보 요구 사항 <br/>
											- DDL, DML, TCL, WHERE 절, Function<br/>
											- Group by, having 절, Order by 절, 조인 
										</td>
									</tr>
									<tr>
										<th scope="row" class="c">3일</th>
										<td>
											SQL 활용
										</td>
										<td>
											- 표준조인, 집합연산자, 계층형 질의, 서브쿼리<br/>
											- 그룹함수, 윈도우 함수, DCL, 절차형 SQL 
										</td>
									</tr>
									<tr>
										<th scope="row" class="c">4일</th>
										<td>
											SQL 최적화 기본 원리
										</td>
										<td>
											- 옵티마이저와 실행계획 <br/>
											- 인덱스 기본 <br/>
											- 조인 수행 원리 
										</td>
									</tr>
								</tbody>
							</table>
							
							<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
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