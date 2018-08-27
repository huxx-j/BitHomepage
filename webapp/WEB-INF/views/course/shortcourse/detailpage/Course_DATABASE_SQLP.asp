<% CourseName = "국가공인 SQL 전문가(SQLP) 자격 검정 준비반" %>
<% strDate="2017.08.05(토) ~ 2017.09.03(토) 매주 토요일 09:00 ~ 17:00" %>

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
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Course/ShortCourse/DetailPage/Common_eventHandlers_SNB.inc"-->
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			//$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("DATABASE_SQLP")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no9").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no9").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no9 li:eq(1) a").addClass("on");
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
						<p class="lineMap">
							<a href="http://www.bitacademy.com">홈</a> 
							<a href="#">과정안내</a>
							<a href="#">프로그래밍과정</a>
							<a href="/Course/Expert/Course_DATABASE_SQLP.asp" class="last on"><%=CourseName%></a>
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
											<td>5일 35시간(1일 7h)</td>
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
								<a href="/Register/Request/register_shortCourse.asp?cID=Database_SQLP" class="btn mid green1" title="수강신청" style="float:right; margin:5px 0;">수강신청</a>
								<div style="clear;both; height:10px;"></div>
																
							</div>
							
						</div>
						<!-- //con_wrap1703 -->
						<div style="clear:both;"></div>
						
						<!-- con_wrap1703 -->
						<div class="con_wrap1703" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>과정소개</h5>
							<p>
								데이터베이스 성능을 결정짓는 가장 핵심적인 요소는 애플리케이션에 집중되어 있습니다. SQL을 한 번만 수행해도 같은 결과를 얻을 수 있는데 불필요하게 많은 SQL을 수행하거나, 파싱을 많이 일으키거나, 많은 I/O를 일으키도록 구현하는 것이 성능 문제를 발생시킵니다. 본 교육은 고성능 SQL, 아키텍처 기반의 데이터베이스 튜닝 원리, Lock과 트랜잭션 동시성 제어 기법, 옵티마이저의 세부적인 작동 원리, 인덱스와 조인 튜닝 원리의 이해를 통해 SQL을 튜닝하는 작업 등을 교육하여 SQL의 수행 원리를 깊이 있게 이해하고 제대로 구사할 수 있는 전문적 지식을 갖춘 인재를 양성하고, 직업 기회 제공 및 사회적 지위(취업, 승진, 보수 등)의 향상을 도모합니다. 
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
								<li>국가공인 SQL 개발자 자격(SQLP) 검정 준비자</li>
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
											- 학사학위 이상 취득한 자<br/>
											- 전문학사학위 취득 후 실무경력 2년 이상인 자<br/>
											- 고등학교 졸업한 후 실무경력 4년 이상인 자
										</td>
									</tr>
									<tr>
										<th>자격 기준</th>
										<td>
											- 국내·외 데이터베이스 관련 자격을 취득한 자<br/>
											- SQL 개발자 자격을 취득한 자
										</td>
									</tr>									
								</tbody>
							</table>
							<br/>
							<span style="margin-left:5px;"> ※ 국내·외 데이터베이스 관련 자격</span><br/>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:100%">
								</colgroup>
								<tbody>
									<tr>
										<th class="c">응시자격</th>
									</tr>
									<tr>
										<td>
											- IBM, Microsoft, Oracle, Sybase 등의 해외 DBMS 기업들이 인증하는 데이터베이tm 관련 자격<br/>
											- 데이터아키텍처 전문가(DAP) 및 준전문가(DAsP)
										</td>
									</tr>
									
								</tbody>
							</table>
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
										<th scope="row" rowspan="2" class="c">1일</th>
										<td>
											SQL 최적화 기본 원리
										</td>
										<td>
											- 윈도우 함수<br/>
											- 옵티마이저와 실행계획 <br/>
											- 인덱스 기본 <br/>
											- 조인 수행 원리 
										</td>
									</tr>
									<tr>
										<td>
											아키텍처 기반 튜닝 원리
										</td>
										<td>
											- 데이터베이스 아키텍처<br/>
											- SQL 파싱 부하<br/>
											- DB Call과 네트워크 부하 <br/>
											- 데이터베이스 I/O   원리
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2" class="c">2일</th>
										<td>
											Lock과 트랜젝션 동시성제어
										</td>
										<td>
											- Lock<br/>
											- 트랜젝션<br/>
											- 동시성 제어 
										</td>
									</tr>
									<tr>
										<td>
											SQL 옵티마이저 원리
										</td>
										<td>
											- 옵티마이저<br/>
											- 퀴리변환
										</td>
									</tr>
									<tr>
										<th scope="row" class="c">3일</th>
										<td>
											인덱스와 조인
										</td>
										<td>
											- 인덱스 기본 원리<br/>
											- 인덱스 튜닝<br/>
											- 조인 기본 원리<br/>
											- 고급 조인 기법
										</td>
									</tr>
									<tr>
										<th scope="row" class="c">4일</th>
										<td>
											고급 SQL 튜닝
										</td>
										<td>
											- 고급 SQL 활용<br/>
											- 소스 튜닝<br/>
											- DML 튜닝<br/>
											- 파티션 활용<br/>
											- 배치 프로그램 튜닝 
										</td>
									</tr>
									
									<tr>
										<th scope="row" rowspan="2" class="c">5일</th>
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
										<td>
											데이터 모델과 성능
										</td>
										<td>
											- 정규화와 성능 <br/>
											- 반정규화와 성능 <br/>
											- 대용량 데이터에 따른 성능 <br/>
											- DB구조와 성능 <br/>
											- 분산 DB 데이터에 따른 성능 
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