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
				<h3><span class="courseName">워드프레스 단기 마스터 과정</span></h3>
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
						<h4 class="fl">워드프레스 단기 마스터 과정</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">단기 / 핵심역량과정</a>
							<a href="#this" class="last on">워드프레스 단기 마스터 과정</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>워드프레스 단기 마스터 과정</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">워드프레스 단기 마스터 과정</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>2014.11.27 ~ 2014.12.16 (화,수,목)</td>
											<th scope="row" class="tit">강의시간</th>
											<td>19:30 ~ 21:30 (2시간, 총 16시간)  </td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>600,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1423</td>
										</tr>
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">근로자카드(정규직 : 480,000원 | 비정규직 : 600,000원) | 사업주 훈련 : 우선지원대상 기업기준 90,974원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_123.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육소개</h5>
							<p>워드프레스에 관심이 있는 웹 디자이너를 대상으로 하는 웹사이트 제작 교육입니다. 웹 디자인에 대한 경험만 있다면, 워드프레스를 처음 시작하는 분들도 자신만의 워드프레스 웹사이트를 직접 구축할 수 있습니다. 
							직접 제작한 PSD 형태의 웹사이트 디자인을 워드프레스로 구축할 수 있도록, 수강생이 직접 워드프레스 테마를 제작해 봅니다.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육특징</h5>
							<ul class="ul_dot_gray">
								<li>“Do it! 워드프레스 웹사이트 만들기” 도서 저자 직강의 국내 최초로 워드프레스 테마를 직접 제작하는 교육<li>
								<li> 웹 디자이너를 대상으로 하는 실습 위주의 교육으로 진행됩니다.</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육대상</h5>
							<p>직접 제작한 웹사이트 디자인을 워드프레스로 구축하고 싶은 웹 디자이너</p>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type1">
								<caption>웹접근성 실무 마스터링 워크샵 커리큘럼</caption>
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
										<th scope="row">워드프레스 익히기</th>
										<td>
											<dl>
												<dt>* 워드프레스로 홈페이지 구성을 해 보자 </dt>
												<dd>
													<ul>
														<li>워드프레스 설정 및 관리자 기능 익히기</li>
														<li>콘텐츠 구성 요령 익히기 (메뉴, 카테고리, 태그, 위젯 등) -	홈페이지 계획 및 틀 만들기</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>관리자 기능 익히기, 콘텐츠 구성과 구조화, 홈페이지 틀 만들기</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">프리미엄 테마 활용하기</th>
										<td>
											<dl>
												<dt>* 프리미엄 테마를 활용한 홈페이지 구축 노하우를 익히자</dt>
												<dd>
													<ul>
														<li>프리미엄 테마의 다양한 설정과 기능 익히기 </li>
														<li>쉽게 페이지 구성하는 노하우 익히기</li>
														<li>페이지 빌더를 활용하여 레이아웃 구성하기</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>프리미엄 테마 설정 및 레이아웃 구성 실습</li>
														<li>longdesc의 처리 (연혁, 약도 등 이미지 컨텐츠 처리)</li>
														<li>이미지맵의 처리 (네이버, 다음 지도 API등 처리)</li>
														<li>의미 없는 이미지의 처리</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">워드프레스 활용 및 관리</th>
										<td>
											<dl>
												<dt>* 워드프레스의 기능 확장과 관리 노하우를 익히자</dt>
												<dd>
													<ul>
														<li>소셜미디어 연동, 검색엔진 최적화, 통계 연동</li>
														<li>호스팅 및 DB 관리</li>
														<li>백업 및 보안, 성능 개선</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>연동 서비스 및 관리 도구 활용 실습</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">워드프레스 테마 커스터마이징 하기</th>
										<td>
											<dl>
												<dt>* 워드프레스 테마의 구조와 기능을 익히자 </dt>
												<dd>
													<ul>
														<li>Child 테마를 활용한 테마 수정</li>
														<li>워드프레스 테마 수정 및 한글 폰트 적용</li>
														<li>워드프레스 테마 구조와 기능 익히기</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>워드프레스 기본 테마를 원하는 형태로 변경하기 (Hard Coding)</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">BLANK Theme 활용한 <br>워드프레스 테마 만들기</th>
										<td>
											<dl>
												<dt>* 기본적인 워드프레스 테마를 만들어 보자</dt>
												<dd>
													<ul>
														<li>Step by Step 테마 제작 프로세스 익히기 </li>
														<li>PSD를 기반으로 하는 Structure Markup</li>
														<li>Barebone 테마(BLANK Theme)를 활용한 기본 테마 완성</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>홈페이지 Markup 작성 및 테마 입히기 실습</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">HTML5 Reset Theme 활용한 테마 만들기</th>
										<td>
											<dl>
												<dt>* HTML5 기반의 워드프레스 테마를 만들어 보자 </dt>
												<dd>
													<ul>
														<li>HTML5 Semantic Tag 적용과 IE 브라우저 대응</li>
														<li>다양한 템플릿 페이지 작성 및 적용</li>
														<li>다양한 전면 페이지 제작</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>HTML5 기반의 워드프레스 테마 제작</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">Drag and Drop emplate Theme <br>활용한 테마 만들기</th>
										<td>
											<dl>
												<dt>* Drag and Drop 형태의 템플릿 형 테마 활용하기</dt>
												<dd>
													<ul>
														<li>코딩을 최소화하고 직관적으로 활용할 수 있는 Template Theme 개념 </li>
														<li>Dynamic Theme Page Template 활용 </li>
														<li>Drag and Drop으로 다양한 테마 템플릿 페이지 만들기</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>Drag and Drop Theme Template 활용 실습</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">나만의 테마 완성하기</th>
										<td>
											<dl>
												<dt>* 워드프레스 테마를 완성해 보자</dt>
												<dd>
													<ul>
														<li>템플릿 테마에 CSS와 JavaScript 적용하기</li>
														<li>테마 설정 메뉴(Theme Option Panel) 제작하기</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>템플릿 테마 코딩 실습 및 테마 설정 메뉴 제작 실습</li>
													</ul>
												</dd>
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