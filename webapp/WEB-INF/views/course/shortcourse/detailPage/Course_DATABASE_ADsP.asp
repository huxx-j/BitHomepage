<% CourseName = "국가공인 데이터 분석 준전문가 자격검증(ADsP) 준비반" %>
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
			//$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("DATABASE_ADSP")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no9").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no9").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no9 li:eq(2) a").addClass("on");

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
						<h4 class="fl" ><%=CourseName%></h4>
						<p class="lineMap" style="width:130px;">
							<a href="http://www.bitacademy.com">홈</a> 
							<a href="#">과정안내</a>
							<a href="#">프로그래밍과정</a>
							<a href="/Course/Expert/Course_DATABASE_ADsP.asp" class="last on"><%=CourseName%></a>
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
											<td>700,000원</td>
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
								<a href="/Register/Request/register_shortCourse.asp?cID=Database_ADsP" class="btn mid green1" title="수강신청" style="float:right; margin:5px 0;">수강신청</a>
								<div style="clear;both; height:10px;"></div>
																
							</div>
							
						</div>
						<!-- //con_wrap1703 -->
						<div style="clear:both;"></div>
						
						<!-- con_wrap1703 -->
						<div class="con_wrap1703" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>과정소개</h5>
							<p>
								데이터 처리 및 분석을 통한 데이터 활용은 생산성 향상, 고부가가치 및 고용 창출 등 국가 경제적 가치 창출의 핵심동력으로 급부상하고 있습니다.<br/>
								특히, 과학적 의사 결정의 토대가 되는 데이터 분석은 기업과 국가의 생산성 향상에 기여하는 혁신 도구로 각광을 받고 있습니다. 기업체들은 자사의 경영 전략에 데이터 분석을 도입하여 수익 증대를 실현할 수 있으며, 데이터 분석을 공공영역에 도입할 경우에는 높은 사회적, 경제적 효과가 발생할 것으로 예상됩니다. 이러한 데이터 분석의 가능성을 실현하기 위해서는 데이터의 다각적 분석을 통해 조직의 전략방향을 제시하는 우수한 역량을 갖춘 데이터 분석 전문가의 확보가 필수적입니다. <br/>
								사회 전반의 데이터 활용에 필수적인 데이터 분석 능력 교육을 통하여 공공, 민간 분야의 실무형 데이터 분석 전문가를 양성하고, 직업 기회 제공 및 사회적 지위(취업, 승진, 보수 등)의 향상을 도모합니다.
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
								<li>국가공인 데이터 분석 준전문가(ADsP) 검정 준비자<br/>※ 응시자격 제한없음</li>
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
										<th scope="col" class="c">주제</th>
										<th scope="col" class="c">교육내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="2" class="c">1일</th>
										<td>
											데이터의 이해 
										</td>
										<td>
											- 데이터와 정보<br/>
											- 데이터베이스의 정의와 특징<br/>
											- 데이터베이스 활용
										</td>
									</tr>
									<tr>
										<td>
											데이터의 가치와 미래
										</td>
										<td>
											- 빅데이터의 이해<br/>
											- 빅데이터의 가치와 영향<br/>
											- 비즈니스 모델<br/>
											- 위기 요인과 통제 방안<br/>
											- 미래의 빅데이터 
										</td>
									</tr>
									
									<tr>
										<th scope="row" rowspan="2" class="c">2일</th>
										<td>
											가치 창조를 위한 데이터 사이언스와 전략 인사이드 
										</td>
										<td>
											- 빅데이터 분석과 전략 인사이트 <br/>
											- 전략 인사이트 도출을 위한 필요 역량<br/>
											- 빅데이터 그리고 데이터 사이언스의 미래  
										</td>
									</tr>
										
									<tr>
										<td>
											데이터 분석 기획의 이해 
										</td>
										<td>
											- 분석 기획 방향성 도출<br/>
											- 분석 방법론 <br/>
											- 분석 과제 발굴<br/>
											- 분석 프로젝트 관리 방안 
										</td>
									</tr>
									
									<tr>
										<th scope="row" rowspan="2" class="c">3일</th>
										<td>
											분석 마스터 플랜 
										</td>
										<td>
											- 마스터 플랜 수립<br/>
											- 분석 거버넌스 체계 수립 
										</td>
									</tr>
									<tr>
										<td>
											R기초와 데이터 마트
										</td>
										<td>
											- R 기초<br/>
											- 데이터 마트<br/>
											- 결측값 처리와 이상값 검색
										</td>
									</tr>
									
									<tr>
										<th scope="row" rowspan="2" class="c">4일</th>
										<td>
											통계분석  
										</td>
										<td>
											- 통계학 개론 <br/>
											- 기초 통계 분석<br/>
											- 다변량 분석<br/>
											- 시계열 예측 
										</td>
									</tr>
									<tr>
										<td>
											정형 데이터 마이닝 
										</td>
										<td>
											- 데이터마이닝 개요 <br/>
											- 분류분석(Classification) <br/>
											- 군집분석(Clustering) <br/>
											- 연관분석(Association Analysis)
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