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

	<script type="text/javascript">
		$(document).ready(function(){
			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			//ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
			$(".snb .depth2_wrap.no5").find("li a").eq(6).addClass("on");
		});
	</script>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">C Programming (주말)</span></h3>
				<h4>이론과 실습을 병행하여 진행하며 C언어의 핵심을 파악하여 다양한 분야의 응용 프로그램을 개발할 수 <br>있는 폭 넓은 지식 및 기술을 습득하여 실무에 적용 가능 하도록 교육하는 과정</h4>
			</div>
		</div>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl">C Programming (주말)</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍과정 / 핵심역량과정</a>
							<a href="#this" class="last on">C Programming (주말)</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>C Programming (주말)</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">C Programming (주말)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<!--<li style="min-height:20px;">2016.01.09 ~ 2016.01.31 (토/일)</li>-->
													<!--<li style="min-height:20px;">2016.02.13 ~ 2016.03.06 (토/일)</li>-->
													<!--<li style="min-height:20px;">2016.03.12 ~ 2016.04.03 (토/일)</li>-->
													<li style="min-height:20px;">2016.04.09 ~ 2016.05.01 (토/일)</li>
													<!--<li><a href='/Course/ShortCourse/Course_shortCourse_vacation_winter_2015.asp' class='btn sml blue'>방학특강</a> <span class="blueTxt">2015.12.21 ~ 2016.01.12</span></li>-->
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<span class="blueTxt">1일 7.5시간 * 8일(총 60시간) </span>
												<ul class="ul_dot_gray">
													<li>강의 : 9:30 ~ 18:00(7.5시간)</li>
												</ul>												
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>350,000원 <!--<span class="greenTxt">마일리지<span class="blueTxt"> 5%</span>적립(17,500원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1421</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">근로자카드 / 바우처 (정규직 : 280,000원 | 비정규직 : 350,000원) / 사업주 환급 : 우선지원대상기업 기준 279,980원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용자세히보기</a></td>
										</tr>
										-->
									</tbody>
								</table>
							</div>
							
						</div>
						<!-- //con_wrap -->

						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육소개</h5>
							<p>본 과정은 C언어는 접해보았지만, 정확한 개념이 없는 분, C언어를 처음 배우시는 분들을 대상으로, 기본 문법에서 코딩까지 체계적으로 학습하는 과정입니다. 이론과 실습을 병행하여 진행하며 C언어의 핵심을 파악하여 다양한 분야의 응용 프로그램을 개발할 수 있는 폭 넓은 지식 및 기술을 습득하여 실무에 적용 가능 하도록 교육하는 과정</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>프로그래머의 첫 관문으로 프로그래밍 언어에 대한 자신감 고취</li>
								<li>실습을 통한 효율적 프로그래밍 구현 능력 향상</li>
								<li>프로그래밍 강화로 본인만의 능력 구축</li>
								<li>문법적인 공부를 탈피하여 스스로 생각하여 프로그램을 작성할 수 있는 능력배양 (이론:실습 = 3:7)</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap last">
							<h5>커리큘럼</h5>
							<table class="table_col_type2" style="width:70%">
								<caption>C Programming 커리큘럼</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:30%">
									<col style="width:40%">
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
										<th scope="row" rowspan="6">C언어 기본구조</th>
										<td>C언어 환경</td>
										<td>C언어 특징, 컴파일러 사용법</td>
									</tr>
									<tr>
										<td>C언어 구조</td>
										<td>데이터 형, 변수 사용법</td>
									</tr>
									<tr>
										<td rowspan="4">C언어 기본문법</td>
										<td>기본 입출력 함수, 연산자</td>
									</tr>
									<tr>
										<td>조건문</td>
									</tr>
									<tr>
										<td>반복문</td>
									</tr>
									<tr>
										<td>C기본 문법에 대한 실습</td>
									</tr>

									<tr>
										<th scope="row" rowspan="8">포인터와 배열</th>
										<td rowspan="2">배열</td>
										<td>1차원 배열 이론</td>
									</tr>
									<tr>
										<td>2차원 배열 이론</td>
									</tr>
									<tr>
										<td rowspan="2">함수</td>
										<td>함수의 이론</td>
									</tr>
									<tr>
										<td>함수와 포인터의 관계</td>
									</tr>
									<tr>
										<td rowspan="4">포인터</td>
										<td>1차원 배열과 포인터</td>
									</tr>
									<tr>
										<td>문자열과 포인터</td>
									</tr>
									<tr>
										<td>2차원 배열과 포인터</td>
									</tr>
									<tr>
										<td>메모리 관리와 동적할당</td>
									</tr>

									<tr>
										<th scope="row" rowspan="4">C언어의 확장</th>
										<td rowspan="2">구조체</td>
										<td>구조체 이론</td>
									</tr>
									<tr>
										<td>구조체 배열과 포인터</td>
									</tr>
									<tr>
										<td>전처리기</td>
										<td>매크로와 전처리기</td>
									</tr>
									<tr>
										<td>파일입출력</td>
										<td>파일입출력 이론 및 실습</td>
									</tr>
								</tbody>
								<!-- // 이하 자료구조 추가된 커리큘럼
								<thead>
									<tr>
										<th scope="col">일차</th>
										<th scope="col">주제</th>
										<th scope="col">상세내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th>1일차</th>
										<td>툴사용</td>
										<td>C프로그램의 이해, 기본 프로그래밍</td>
									</tr>
									
									<tr>
										<th>2일차</th>
										<td>문법</td>
										<td>선택, 반복</td>
									</tr>
									
									<tr>
										<th>3일차</th>
										<td>함수</td>
										<td>함수</td>
									</tr>
									
									<tr>
										<th>4일차</th>
										<td rowspan="3">배열</td>
										<td>일차원 배열과 String</td>
									</tr>
									
									<tr>
										<th>5일차</th>
										<td>2차원 배열</td>
									</tr>
									
									<tr>
										<th>6일차</th>
										<td>다차원 배열</td>
									</tr>
									
									<tr>
										<th>7일차</th>
										<td rowspan="4">포인터</td>
										<td>포인터, 포인터 연산</td>
									</tr>
									
									<tr>
										<th>8일차</th>
										<td>포인터배열, 배열포인터</td>
									</tr>
									
									<tr>
										<th>9일차</th>
										<td>함수포인터, 범용포인터</td>
									</tr>
									
									<tr>
										<th>10일차</th>
										<td>동적할당</td>
									</tr>
									
									<tr>
										<th>11일차</th>
										<td> </td>
										<td>스토리지 클래스</td>
									</tr>
									
									<tr>
										<th>12일차</th>
										<td rowspan="2">구조체</td>
										<td>구조체</td>
									</tr>
									
									<tr>
										<th>13일차</th>
										<td>union, 비트</td>
									</tr>
									
									<tr>
										<th>14일차</th>
										<td>파일</td>
										<td>파일 입출력</td>
									</tr>
									
									<tr>
										<th>15일차</th>
										<td rowspan="6">자료구조</td>
										<td>싱글링크드 리스트</td>
									</tr>
									
									<tr>
										<th>16일차</th>
										<td>더블링크드 리스트</td>
									</tr>
									
									<tr>
										<th>17일차</th>
										<td>정렬</td>
									</tr>
									
									<tr>
										<th>18일차</th>
										<td>탐색</td>
									</tr>
									
									<tr>
										<th>19일차</th>
										<td>스택, 큐</td>
									</tr>
									
									<tr>
										<th>20일차</th>
										<td>트리, 그래프</td>
									</tr>
									
								</tbody>
								-->
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">문의</span> : 02.3486.1423 &nbsp;(email:egchung@bit.kr)</p>
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