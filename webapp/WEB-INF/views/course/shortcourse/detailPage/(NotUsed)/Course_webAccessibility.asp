<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
			$(".snb .depth2_wrap.no5").find("li a").eq(8).addClass("on");
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
				<h3><span class="courseName">웹접근성 실무 마스터링 워크샵</span></h3>
				<h4></h4>
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
						<h4 class="fl">웹접근성 실무 마스터링 워크샵</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">단기 / 핵심역량과정</a>
							<a href="#this" class="last on">웹접근성 실무 마스터링 워크샵</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>웹접근성 실무 마스터링 워크샵</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">웹접근성 실무 마스터링 워크샵(웹접근성으로 누구나 이용하기 편한 웹 사이트 만들기)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td><del>2014.07.08 ~ 07.31 (화,목/8회)</del></td>
											<th scope="row" class="tit">강의시간</th>
											<td>19:30 ~ 21:30 (2시간, 총 16시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>800,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1423</td>
										</tr>
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">근로자카드(정규직 : 640,000원 | 비정규직 : 800,000원) | 사업주 훈련 : 우선지원대상 기업기준 90,974원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a><br>* 바우처</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육소개</h5>
							<p class="fb mar_b5 fs13">“웹접근성, 제대로 파악하여 실무에 적용해보자!”</p>
							<p>웹 접근성은 이제 필수입니다.<br>
							2013년 4월 11일부터 장차법(장애인 차별 금지법) 시행으로 모든 사업장의 홈페이지는 웹접근성을 지켜야 하도록 법이 바뀌었습니다. 또한 2014년 1월 27일부로 웹접근성 검수 업체가 2개로 통합되었습니다.<br>
							이에 따라 모든 에이전시, SI업체들이 웹접근성이 이슈가 되었습니다.<br>
							통합된 업체의 기준의 웹접근성을 지키며 웹 페이지를 제작하는 방법을 이론과 실습을 통해서 배우고 더 나아가 반응형 웹에서의 웹접근성도 같이 짚고 넘어가도록 하겠습니다.</p>
							<p class="fb mar_b5 mar_t10 fs13">반응형 웹에서도 접근성이 되나요?</p>
							<p>반응형 웹사이트라고 접근성이 안되 라는 법은 없습니다.<br>
							다만 기존의 웹접근성을 토대로 좀 더 많이 고민하고, 생각해야 반응형 웹에서도 접근성을 인증 할 수 있습니다.<br>
							이 교육을 통해서 반응형 웹에서도 웹접근성을 준수 하는 방법을 익히도록 하겠습니다.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육특징</h5>
							<ul class="ul_dot_gray">
								<li>본 강좌는 장차법 관련 웹접근성 항목을 제작하는 방법에 대해 다룹니다.</li>
								<li>본 강좌는 웹접근성이 지켜지지 않은 사이트를 대상으로 웹접근성 페이지로 바꾸는 방법을 다룹니다.</li>
								<li>본 강좌는 웹표준(HTML & CSS)에 대해서 기본적인 지식을 다룹니다.</li>
								<li>본 강좌는 이론과 실습을 함께 진행하며, 이론을 실무에 적용하여 사용하는 걸 목적으로 합니다.</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>웹 표준은 알지만, 웹접근성의 이해와 주의점을 알고 싶은 분</li>
								<li>웹 디자이너이지만, 웹접근성 디자인을 모르시는 분</li>
								<li>개발자이지만 웹접근성 개발을 모르시는 분</li>
								<li>프로젝트를 컨설팅 해야 하는 프로젝트 참여자</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type1">
								<caption>워드프레스 단기 마스터 과정 커리큘럼</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:70%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">과정명</th>
										<th scope="col">교육내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">웹접근성의 기초</th>
										<td>
											<dl>
												<dt>* 왜 웹접근성이 필요한가?</dt>
												<dd>
													<ul>
														<li>장애인 차별 금지법으로 인한 해외 사례 이야기 - 일반인한테 웹접근성이 유익한 점</li>
													</ul>
												</dd>
												<dt>웹접근성 지침에 대한 기본지식</dt>
												<dd>
													<ul>
														<li>웹접근성 지침 항목</li>
														<li>웹접근성 평가 방법 및 마크</li>
													</ul>
												</dd>
												<dt>* 웹 표준 호환성이란?</dt>
												<dd>
													<ul>
														<li>HTML & CSS 크로스 브라우징 작업</li>
													</ul>
												</dd>
												<dt>* Q&A</dt>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">웹접근성을 위한 디자인</th>
										<td>
											<dl>
												<dt>* 디자이너 준수 항목</dt>
												<dd>
													<ul>
														<li>컬러의 사용 (명암대비, shape의 사용)</li>
														<li>UI의 구성 (동영상, jump select, etc…)</li>
														<li>이미지 맵의 사용금지 (map 태그의 사용)</li>
														<li>팝업의 사용 (시스템 팝업, 레이어 팝업)</li>
													</ul>
												</dd>
												<dt>* Q&A</dt>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>
											<dl>
												<dt>* 디자이너가 지켜야하는 항목</dt>
												<dd>
													<ul>
														<li>디자인 항목 as is -> to be 수정</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">이미지 & 동영상</th>
										<td>
											<dl>
												<dt>* 이미지 처리</dt>
												<dd>
													<ul>
														<li>alt의 처리 (image, background, bullet, icon 등의 처리)</li>
														<li>longdesc의 처리 (연혁, 약도 등 이미지 컨텐츠 처리)</li>
														<li>이미지맵의 처리 (네이버, 다음 지도 API등 처리)</li>
														<li>의미 없는 이미지의 처리</li>
													</ul>
												</dd>
												<dt>동영상의 자막제공</dt>
												<dd>
													<ul>
														<li>동영상 자막 처리 UI (동영상 처리, 유튜브 자막처리)</li>
														<li>기본적 제작방법 (scroll ui제작)</li>
													</ul>
												</dd>
												<dt>Q&A</dt>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>
											<dl>
												<dt>* 이미지 동영상의 처리</dt>
												<dd>
													<ul>
														<li>이미지 처리기법 실습</li>
														<li>동영상 처리기법 실습</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">키보드 & 금지 UI</th>
										<td>
											<dl>
												<dt>* 키보드의 처리</dt>
												<dd>
													<ul>
														<li>키보드의 사용 UI (브라우저의 tab키의 키보드 이동)</li>
														<li>스킵 네이게이션 (컨텐츠의 이동 기술)</li>
														<li>팝업 (새창으로 열리는 팝업의 javascript & target처리)</li>
													</ul>
												</dd>
												<dt>* 사용하면 안되는 기술들</dt>
												<dd>
													<ul>
														<li>프레임의 사용 (frame과 iframe의 사용)</li>
														<li>GIF에니메이션의 사용 (애니메이션의 사용)</li>
														<li>레이어 팝업의 사용 (레이어 팝업의 사용 유무)</li>
														<li>반응 시간 조절 (포커스의 자동 이용, 배너의 컨트롤 박스 등 UI처리)</li>
													</ul>
												</dd>
												<dt>* Q&A</dt>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>
											<dl>
												<dt>* 키보드 처리</dt>
												<dd>
													<ul>
														<li>키보드 움직임 처리</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">개발관련 부분[1]</th>
										<td>
											<dl>
												<dt>* 개발 부서와의 조율</dt>
												<dd>
													<ul>
														<li>데이터 테이블 (table의 웹접근성 지키기)</li>
														<li>논리적 구성 (h1~h6의 제목, 내용의 흐름 지키기)</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>
											<dl>
												<dt>* 개발부분 처리</dt>
												<dd>
													<ul>
														<li>개발부분 처리 기술 실습[1]</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">개발관련 부분[2]</th>
										<td>
											<dl>
												<dt>* 개발 부서와의 조율</dt>
												<dd>
													<ul>
														<li>온라인 서식 구성 (form관련 태그의 UI처리)</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>
											<dl>
												<dt>* 온라인 서식의 맞춤</dt>
												<dd>
													<ul>
														<li>개발부분 처리 기술 실습[2]</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">신기술의 사용 & UI 테스트</th>
										<td>
											<dl>
												<dt>* 신기술의 사용</dt>
												<dd>
													<ul>
														<li>신기술의 사용</li>
														<li>플래시의 처리 (image replacement 응용기법)</li>
														<li>자바스크립트의 처리 (겸손한 자바스크립트 처리)</li>
														<li>웹접근성 테스트</li>
														<li>k-WAH4.0 자동화 툴</li>
														<li>WAVE</li>
													</ul>
												</dd>
												<dt>* Q&A</dt>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>
											<dl>
												<dt>* UI 테스트</dt>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">결과물 정리 및 토론</th>
										<td>
											<dl>
												<dt>* 장차법 웹접근성 항목 정리</dt>
												<dt>* 장차법 웹접근성 컨설팅하기</dt>
												<dt>* 장차법 웹접근성 품질마크 획득하기</dt>
												<dt>* Q&A</dt>
											</dl>
										</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1423</p>
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