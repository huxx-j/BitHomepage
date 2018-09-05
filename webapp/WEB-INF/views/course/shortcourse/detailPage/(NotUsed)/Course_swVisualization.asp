<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="Common_getIndex.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
			$(".snb .depth2_wrap.no5").find("li a").eq(getIndex("SWVISUALIZATION")).addClass("on");
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
				<h3><span class="courseName">SW Visualization</span></h3>
				<h4>Software Visualization 스킬을 높이면 현장 SW개발 목표와 진도를 시각적으로 파악하면서 <br>위험을 적시에 대처하고 잠재된 실패 요소를 제거하여 고객이 원하는 SW Quality를 달성</h4>
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
						<h4 class="fl">Software Visualization</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=visualization" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍과정 / 핵심역량과정</a>
							<a href="#this" class="last on">SW Visualization</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>SW Visualization</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">Software Visualization을 통한 품질관리와 고객만족 실무</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<!--<li>2016.10.19 ~ 2016.10.21 (3일 / 총 21시간)</li>-->
													<li>문의</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>문의<!--09:30 ~ 17:30 (1일 7시간)--></td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>420,000원<!--550,000원--><!--<span class="greenTxt"> 마일리지 5%적립 (27,500원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1423</td>
										</tr>
										<tr>
											<th scope="row" class="tit">환급비</th>
											<!--<td colspan="3">근로자카드 / 바우처 : 147,240원 | 사업주 훈련 : 우선지원대상 기업기준 147,240원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>-->
											<td colspan="3">근로자카드 (정규직 : 110,440원 | 비정규직 : 138,050원) | 사업주 환급 : 최대 138,050원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->
						
						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_12.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->
						<div class="con_wrap mar_l0">
							<img src="/Images/Content/img_swvisual_01.jpg" alt="SoftWare Visualization을 통한 품진관리와 고객만족 실무 - 본 과정은 정보통신산업진흥원(NIPA)부설 SW공학센터와 비트컴퓨터 간 협약으로 진행되는 SW전문인력 양성 과정으로 SW공학센터가 개발한 SW Visulization 교육과정을 제공받아 진행됩니다.">
						</div>
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육소개 및 특장점</h5>
							<!--<p>소프트웨어 개발 전반의 과정을 발주자(고객), 관리자(PM), 개발자 등 이해관계자 모두가 쉽게 공유하기 위해서는 일정체계와 툴(tools)이 필요한데, 비용과 시간 등 여러 여건상 구축하기 어려운 것이 현실입니다. <br>
									이를 해결하기 위해 개발된 모델이 Software Visualization 입니다.</p>-->
							<p>SW 공학의 전반적인 지식 습득으로 품질 향상의 기초 지식을 다지고, Software Visualization 관련 각종 tool 사용법을 익혀 실무 프로젝트의 품질 향상에 실질적인 도움을 주는 교육입니다.</p>

						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<p>Software Visualization 스킬을 높이면 현장 SW개발 목표와 진도를 시각적으로 파악하면서 위험을 적시에 대처하고 잠재된 실패 요소를 제거하여 고객이 원하는 SW Quality를 달성할 수 있습니다.</p>
							<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="프로세스시각화, 소스코드 시각화, 소스코드 문서화, 프로세스 문서화"></p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>소프트웨어 품질관리자</li>
								<li>소프트웨어 개발자 및 프로젝트 관리자(PM)</li>
								<li>소프트웨어 발주부서(IT 기획)</li>
								<li>PMO 관계자</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<div class="con_wrap">
							<h5>예상진로 (및 공부방향)</h5>
							<ul class="ul_dot_gray">
								<li>소프트웨어 아키텍처</li>
								<li>SW개발 방법론</li>
								<li>ITILv3를 기반으로 한 IT Service Management</li>
							</ul>
						</div>
						
						<!--
						<div class="con_wrap">
							<h5>기대효과</h5>
							<ul class="ul_dot_gray">
								<li>Quality : 납기지연, 비용초과, 품질저하 등 프로젝트 수행에서 발생하는 많은 문제를 Software Visualization에 의한 프로세스 내재화로 해결할 수 있습니다.</li>
								<li>Communication : 이해관계자들의 SW 개발 이해 차이를 시각적으로 정리해주어 표현의 혼선을 막고 범위와 진도에 대한 신속하고 정확한 소통을 이끌어내어 품질관리를 용이하게 합니다.</li>
								<li>Satisfaction : SW 개발 조직(회사)와 구성원의 역량 향상으로 IT 직무 만족도와 고객지향(CS) 마인드를 높여줍니다.</li>
							</ul>
							<p><img src="/Images/Content/img_swvisual_03.jpg" alt="Quality : 납기지연, 비용초과, 품질저하 등 프로젝트 수행에서 발생하는 많은 문제를 Software Visualization에 의한 프로세스 내재화로 해결할 수 있습니다. Communication : 이해관계자들의 SW 개발 이해 차이를 시각적으로 정리해주어 표현의 혼선을 막고 범위와 진도에 대한 신속하고 정확한 소통을 이끌어내어 품질관리를 용이하게 합니다. Satisfaction : SW 개발 조직(회사)와 구성원의 역량 향상으로 IT 직무 만족도와 고객지향(CS) 마인드를 높여줍니다."></p>
						</div>
						-->							
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type2">
								<caption>Software Visualization 커리큘럼</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:30%">
									<col style="width:40%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">대주제</th>
										<th scope="col">소주제</th>
										<th scope="col">학습내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="2">SW Visualization 개요</th>
										<th>SW 개발 동향</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>소프트웨어 개발프로세스</li>
												<li>세계적 SW 개발 동향</li>
												<li>소프트웨어 개발 우수 사례가 시사하는 SW Quality Insights</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th>SW Visualization 개념</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>프로세스 시각화,소스코드 시각화</li>
												<li>프로세스 문서화,소스코드 문서화</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">SW 자산 관리 가시화</th>
										<th>SW 자산 관리 개념</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW 자산 관리  </li>
												<li>Daily Build 적용하기  </li>
											</ul>
										</td>
									</tr>
									<tr>
										<th>형상 관리  </th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>형상관리 개념</li>
												<li>형상관리 시스템  </li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">요구사항 관리 가시화</th>
										<th>요구공학 개념</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>소프트웨어 개발 목표를 검증하는 방법</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th>요구사항 정의와 분류</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>고객 요구를 SW 기술적으로 정리하는 방법</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">SW 코드 가시화</th>
										<th>코드 가시화</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>코드 구조 체계화</li>
												<li>코드 가시화(Code Visualization) </li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="3">SW 구조 가시화</th>
										<th>SW 아키텍처 개념</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW 아키텍쳐 스타일 소개</li>
												<li>SW 디자인패턴 소개</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th>SW 아키텍처 설계 뷰 작성</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW 아키텍쳐 뷰타입 소개</li>
												<li>SW 아키텍처 작성 절차 </li>
											</ul>
										</td>
									</tr>
									<tr>
										<th>SW 아키텍처 설계 뷰 검증</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>담당자 역할 요약</li>
												<li>SW 아키텍처 설계  검증 절차 </li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">과정 정리 </th>
										<th> </th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW Visualization을 적용한 프로젝트 계획 수립</li>
												<li>SW Visualization을 통한 SP인증 획득하기</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1423 (egchung@bit.kr)</p>
						</div>
						<!-- //con_wrap -->
						
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap">
							<h5>기대효과</h5>
							<ul class="ul_dot_gray">
								<li>Quality : 납기지연, 비용초과, 품질저하 등 프로젝트 수행에서 발생하는 많은 문제를 Software Visualization에 의한 프로세스 내재화로 해결할 수 있습니다.</li>
								<li>Communication : 이해관계자들의 SW 개발 이해 차이를 시각적으로 정리해주어 표현의 혼선을 막고 범위와 진도에 대한 신속하고 정확한 소통을 이끌어내어 품질관리를 용이하게 합니다.</li>
								<li>Satisfaction : SW 개발 조직(회사)와 구성원의 역량 향상으로 IT 직무 만족도와 고객지향(CS) 마인드를 높여줍니다.</li>
							</ul>
							<p><img src="/Images/Content/img_swvisual_03.jpg" alt="Quality : 납기지연, 비용초과, 품질저하 등 프로젝트 수행에서 발생하는 많은 문제를 Software Visualization에 의한 프로세스 내재화로 해결할 수 있습니다. Communication : 이해관계자들의 SW 개발 이해 차이를 시각적으로 정리해주어 표현의 혼선을 막고 범위와 진도에 대한 신속하고 정확한 소통을 이끌어내어 품질관리를 용이하게 합니다. Satisfaction : SW 개발 조직(회사)와 구성원의 역량 향상으로 IT 직무 만족도와 고객지향(CS) 마인드를 높여줍니다."></p>
						</div>
						-->							
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<!--
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type2">
								<caption>Software Visualization 커리큘럼</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:30%">
									<col style="width:40%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" colspan="2">구분</th>
										<th scope="col">학습내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="5">1일차</th>
										<td>09:30 ~ 10:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>오리엔테이션</li>
												<li>SW Visualization 정의</li>
												<li>세계적 SW 개발 동향</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>10:30 ~ 12:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>소프트웨어 개발프로세스</li>
												<li>소프트웨어 개발 우수 사례가 시사하는 SW Quality Insights</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>12:30 ~ 13:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>점심시간</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>13:30 ~ 15:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW 자산 관리</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>15:30 ~ 17:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Daily Build 적용하기</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="5">2일차</th>
										<td>09:30 ~ 10:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>고객 요구를 SW 기술적으로 정리하는 방법</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>10:30 ~ 12:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>소프트웨어 개발 목표를 검증하는 방법</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>12:30 ~ 13:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li> 점심시간</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>13:30 ~ 15:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>코드 가시화(Code Visualization)</li>
												<li>코드 구조 체계화</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>15:30 ~ 17:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>구조적 SW 설계 방법</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="5">3일차</th>
										<td>09:30 ~ 12:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW 구조 설계 검증하기</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>12:30 ~ 13:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>점심시간</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>13:30 ~ 15:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW Visualization을 적용한 프로젝트 계획 수립</li>
												<li>SW Visualization 적용방법과 사례</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>15:30 ~ 16:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW Visualization을 통한 SP인증 획득하기</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>16:30 ~ 17:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Q&amp;A</li>
												<li>과정 요약과 정리</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1423 (egchung@bit.kr)</p>
						</div>
						-->
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=visualization" class="btn mid green1">지원하기</a>
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