<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("SMARTUX")).addClass("on");
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">Smart UX Design Planning</span></h3>
				<h4></h4>
			</div>
		</div>
		<div id="Container_Wrap">
			
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl">Smart UX Design Planning</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">단기 / 핵심역량과정</a>
							<a href="#this" class="last on">Smart UX Design Planning</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>Smart UX Design Planning</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">Smart UX Design Planning</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td><del>2014.08.23 ~ 2014.10.04 (토요일, 총 6회)</del></td>
											<th scope="row" class="tit">강의시간</th>
											<td>12:00 ~ 16:00 (4시간, 총 24시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>800,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1423</td>
										</tr>
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">근로자카드(정규직 : 640,000원 | 비정규직 : 800,000원) | 사업주 훈련 : 우선지원대상 기업기준 135,554원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a><br>* 바우처</td>
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
							<p>User Context Design! 이 강좌는 어플리케이션 디자인을 기획하는 수업으로 처음으로 회사에 입사지원을 하는 신입, 대학(원)생 경력 디자이너에게 어플리케이션 디자인을 경험하고 사용자를 생각하는 디자인을 통해 UX/UI/GUI포토폴리오를 얻는 것에 그 목적을 두고 있고 이를 바탕으로 신입 디자이너에게는 취업이 가능한 경쟁력 있는 포트폴리오를 제작할 수 있는 기회를, 대학(원)생에게는 보다 한 차원 높은 실무적인 경험과 포토폴리오 제작을 또, 경력디자이너에게는 취업 시 자신의 범위를 확장시키고 디자인 기획에대한 퀄리티 있는 포트폴리오를 업데이트하여 시장에서 디자이너로서의 경쟁력을 한 단계 높일 수 있고 흐름에 맞게 적응하는 방법을 제시하고자 한다.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>User Experience Design이 무엇인지 그 개념을 설명할 수 있다. </li>
								<li>Application service에서 사용자를 고려한 컨셉 아이디어를 제시할 수 있다.</li>
								<li>페르소나를 제작하고 해당 행동패턴에 대한 사용자 테스트(User Test)를 진행 할 수 있다.</li>
								<li>협업을 통해 팀원과 의견을 나누고 커뮤니케이션 할 수 있는 스킬을 늘릴 수 있다.</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목적</h5>
							<p>적Smart User Experience Design! 스마트한 시대! 스마트한 사용자 경험디자인을 배워보자!<br>
							최근 새롭게 등장하여 우리나라 국민 3000만 명 이상이 사용하고 있는 Smart Phone의 시대가 도래했다.<br>
							그와 더불어 모바일 시장의 디자인 프로세스가 급격히 변화했고, 각 Market간에 어플리케이션의 경쟁이 일어나면서 사용자 경험 디자인(User Experience Design)에 대한 니즈(Needs)도 급속화 되었다. 그렇기 때문에 사용자와 디바이스의 특성을 고려하여 다양한 부분에서 아이디어를 생각한 디자인을 구현하지 않으면 도태되고 흐름에 적응하지 못하게 되었다. 그 동안 우리나라는 원리와 기본을 추구하기 보다는 빠른 변화와 흐름에 맞게 신속히 대응해 왔었고, 디자이너들은 일을 하기 위한 visual 테크닉의 역량에 집중했었기 때문에 사용자를 고려하고 적절한 아이디어를 혼합하는 생각하는 디자인에 대해서는 부족한 점이 많다. 특히 생각하는 디자인의 대표적인 서비스인 어플리케이션은 우리시대에 필수품인 스마트폰에서 마켓으로 제공되고 나날이 사용자가 증가하고 있다. 이러한 현 상황에서 그 동안 사용자 경험 디자인을 경험하지 못했던 디자이너에게 어플리케이션 디자인에 필요한 프로세스를 정립하여 생각하는 디자인을 경험하게 하고, 또한 실무에서도 프로젝트에 적절히 대응하는 방법을 함께 모색함으로 디자이너의 역량을 한 단계 업그레이드 시키는 것이 이 교육의 목적이다.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>UX디자인 이론과 어플리케이션 디자인 프로젝트를 통한 강의</li>
								<li>사례중심의 케이스 스터디 방식의 강의</li>
								<li>팀별 협업을 통한 사용자 경험 디자인 프로세스의 경험 및 포토폴리오 제작</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>취업을 준비중인 신입 디자이너 및 대학(원)생, 재취업을 희망하는 2-5년 차 디자이너</li>
								<li>어플리케이션의 사용자 경험 디자인(UX Design) 프로세스를 배우고 싶은 디자이너 및 대학(원)생</li>
								<li>초급디자이너에서 중급디자이너로 전환하며 User Context를 경험해 보고 싶은 디자이너 및 대학(원)생</li>
								<li>실무디자인 분야에서 UX/UI 디자인기획 등으로 영역을 넓히고 싶어하는 디자이너(경력 2년 이상)</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>강사소개</h5>
							<p class="fb">이혜래</p>
							<ul class="ul_dot_gray">
								<li>이화여자대학교 디자인대학원 UX디자인 전공 디자인학석사</li>
								<li>숭실대학교 미디어학부 공학사</li>
								<li>(주)Finger 파이낸스본부 CMS사업부 과장</li>
							</ul>
							<p></p>
							<ul class="ul_dot_gray">
								<li>K리그 App UX/UI디자인 기획</li>
								<li>하나은행 LPGA, 이데일리 K-LPGA 골프대회 App, 자사 Shake IOS App, UX/UI 디자인 기획</li>
								<li>KBS 스마트홈(K-Veiw) TV UX/UI 디자인 기획</li>
								<li>KT OCP 위젯 3종(재능,디앤샵, 부동산뱅크) UX/UI 디자인 기획</li>
								<li>CJ ONE 모바일 웹, CJ One App UX/UI디자인 기획</li>
								<li>현대엠앤소프트 맵피 App GUI 디자인 가이드</li>
								<li>외교통상부 검색통합문서 시스템 UX/UI 디자인 기획</li>
								<li>인천자유구역청 사이트 UI디자인</li>
								<li>인천광역시 사업소 사이트 UI 디자인</li>
								<li>삼성케녹스 사이트 UI디자인</li>
								<li>금융집금솔루션(조흥, 제일, 신한) SI 디자인</li>
								<li>그 외 다양한 Device에서 사이트, App, 솔루션 작업</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type1">
								<caption>Smart UX Design Planning 커리큘럼</caption>
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
										<th scope="row">UX Design이란?</th>
										<td>
											<dl>
												<dt>UX 디자인이란?</dt>
												<dd>1)	어플리케이션 서비스의 특징</dd>
												<dd>2)	사용자 경험 디자인의 일반적인 프로세스 정의</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>팀 조직(4~5인)</td>
									</tr>
									<tr>
										<th scope="row">App리서치(Case Study)</th>
										<td>
											<dl>
												<dt>Case Study란?</dt>
												<dd>1) 팀 별 흥미 있는 주제 선정</dd>
												<dd>2) 팀 별 주제에 맞는 App리서치</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>Step1주제에 맞는 App리서치 발표 자료를 정리한다.</td>
									</tr>
									<tr>
										<th scope="row">App리서치 (Case Study)</th>
										<td>
											<dl>
												<dt>App리서치 발표</dt>
												<dd>1) 팀 별 App 리서치 발표 </dd>
												<dd>2) 주제에 맞는 장단점 체크 후 정리</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>App 리서치 발표 후 주제에 맞는 장단점 체크(다른 팀 아이디어나 사례 토론)</td>
									</tr>
									<tr>
										<th scope="row">브레인 스토밍(Brainstorming)</th>
										<td>
											<dl>
												<dt>BrainStorming이란</dt>
												<dd>1) 행동패턴 나열</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>Step2 행동패턴을 정리한다.</td>
									</tr>
									<tr>
										<th scope="row">행동패턴(behavior pattern)</th>
										<td>
											<dl>
												<dt>Behavior pattern 란?</dt>
												<dd>1) 행동패턴 그룹 핑</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>App리서치 반 공유, 주제에 맞는 아이디어 도출을 위한 사용자의 행동 패턴을 나열해 본다.</td>
									</tr>
									<tr>
										<th scope="row">사용자 유형 분류</th>
										<td>
											<dl>
												<dt>사용자 유형 분류란?</dt>
												<dd>1)	행동패턴 그룹을 기초로 유형 분류</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>Step3 사용자 유형 분류 자료를 정리한다.</td>
									</tr>
									<tr>
										<th scope="row">퍼소나 제작(Persona)</th>
										<td>
											<dl>
												<dt>Persona란?</dt>
												<dd>1) 사용자 유형 발표</dd>
												<dd>2) 퍼소나 설정하기</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>사용자 유형을 토대로 퍼소나를 제작한다. (유형을 나누어 개인별 작업)</td>
									</tr>
									<tr>
										<th scope="row">퍼소나 제작(Persona)</th>
										<td>
											<dl>
												<dt>Persona 제작</dt>
												<dd>1)	개인별 작업 팀 공유 및 퍼소나 선정</dd>
												<dd>2)	퍼소나 보완 작업</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>Step4 퍼소나를 제작해 보고 대표 퍼소나를 선정한다.</td>
									</tr>
									<tr>
										<th scope="row">중간 발표</th>
										<td>
											<dl>
												<dt>중간 결과물 발표 및 토론</dt>
												<dd>1) 그 동안의 Step4까지의 과정을 발표한다.</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">컨셉도출(Concept)</th>
										<td>
											<dl>
												<dt>컨셉 도출 이란?</dt>
												<dd>1) 컨셉 설정하기</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>퍼소나를 토대로 사용자 행동과 특성에 맞는 컨셉을 도출한다.</td>
									</tr>
									<tr>
										<th scope="row">컨텐츠 인벤토리(Content inventory)</th>
										<td>
											<dl>
												<dt>컨텐츠 인벤토리 란?</dt>
												<dd>1)	컨텐츠 인벤토리 정의</dd>
												<dd>2)	컨텐츠 인벤토리 및 사이트 맵(기능정리)</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>Step5 컨셉에 필요한 컨텐츠인벤토리를 정리한다.</td>
									</tr>
									<tr>
										<th scope="row">플로우차트(Flow Chart)</th>
										<td>
											<dl>
												<dt>플로우차트 제작</dt>
												<dd>1)	시나리오를 토대로</dd>
												<dd>2)	퍼소나 보완 작업</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>정리된 컨텐츠 인벤토리를 기반으로 흐름도를 만든다.</td>
									</tr>
									<tr>
										<th scope="row">시나리오제작(Scenario)</th>
										<td>
											<dl>
												<dt>시나리오란?</dt>
												<dd>1) 컨텐츠 인벤토리 발표</dd>
												<dd>2) 시나리오 만들기</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>Step6 플로우차트 기반으로 시나리오를 제작한다.</td>
									</tr>
									<tr>
										<th scope="row">와이어프레임(Wire Frame)</th>
										<td>
											<dl>
												<dt>와이어 프레임 ?</dt>
												<dd>1) 시나리오 발표</dd>
												<dd>2) 와이어프레임과 프로토타입의 제작 필요성</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>와이어프레임 그리기</td>
									</tr>
									<tr>
										<th scope="row">프로토타입 제작(Prototype)</th>
										<td>
											<dl>
												<dt>페이퍼 프로토타입 제작</dt>
												<dd>1)	팀별 대표App화면 페이퍼 프로토타입 제작</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>Step7 페이퍼 프로토타입을 보완하여 정리한다. (7강 수업 준비물->페이퍼 프로토타입)</td>
									</tr>
									<tr>
										<th scope="row">사용자 테스트(User Test)</th>
										<td>
											<dl>
												<dt>사용자 테스트란?</dt>
												<dd>1) 사용자 테스트의 정의 및 Task 만들기</dd>
												<dd>2) Task 수행 전, 후 설문 만들기</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>사용자 테스트를 위한 Task 및 테스트 전, 후 설문 만들기</td>
									</tr>
									<tr>
										<th scope="row">사용자 테스트(User Test)</th>
										<td>
											<dl>
												<dt>사용자 테스트 진행</dt>
												<dd>1)	서로 다른 팀의 App화면을 테스트 해본다.</dd>
												<dd>2)	개선사항을 취합 정리한다.</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">실습</th>
										<td>Step8 어플리케이션의 메인과 대표화면을 디자인한다.</td>
									</tr>
									<tr>
										<th scope="row">발표</th>
										<td>
											<dl>
												<dt>결과물 발표 및 토론</dt>
												<dd>1) 그 동안의 Step8까지의 과정을 발표한다.</dd>
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