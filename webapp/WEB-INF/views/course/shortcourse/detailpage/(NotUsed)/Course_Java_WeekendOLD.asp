<%
dim strDate
strDate = "2017.06.10 ~ 2017.07.02"
%>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');
			
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("JAVA")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no8").addClass("on").removeClass("down").addClass("up"); 	
			$(".snb_1702 .newdepth3_wrap.no8").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no8 li:eq(1) a").addClass("on");
			
			$("#btnOpenSa").on("click", function() {
				$("#divSa").show();
				$("#btnOpenSa").animate({opacity:0.01},300,function() { })
			})
			$("#btnOpenGn").on("click", function() {
				$("#divGn").show();
				$("#btnOpenGn").animate({opacity:0.01},300,function() { })
			})
			
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
				<h3><span class="courseName">JAVA Programming (주말)</span></h3>
				<h4>프로그램의 필수적인 요소인 데이터베이스와 자바간의 연결을 통해 실무에 적용 가능한 프로그래밍을 <br>만들 수 있도록 능력을 한 단계 업그레이드 할 수 있는 과정</h4>
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
						<h4 class="fl">JAVA Programming (주말)</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=Java_Weekend" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍과정</a>
							<a href="#this">JAVA</a>
							<a href="#this" class="last on">JAVA Programming (주말)</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>JAVA Programming (주말)</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">JAVA Programming (주말)</td>
										</tr>

										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<li style="min-height:20px;"><%=strDate%></li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<span class="blueTxt">1일 5시간 * 8일(총 40시간) </span>
												
												<ul class="ul_dot_gray">
													<li>토/일</li>
													<li>강의 : 13:00 ~ 18:00(5시간)</li>
												</ul>	
												
											</td>
										</tr>
										

										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>400,000원<!--262,960원--> <span class="blueTxt">(재직자 환급 가능)</span> </td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
								<span class="redTxt">* 본 과정은 상시모집이며 개강 최소인원이 모였을 때, 일정 조율 후 누적지원자들에게 연락하여 개강됩니다.</span>
								
								<div> <!-- div 환급비 -->
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										사업주위탁훈련 <a href="javascript:openSa();" id="btnOpenSa" class="mar_l10 btn sml blue">환급금액 자세히보기</a>
										<!--<span style="margin-left:663px;"><a href="#this" class="mar_l10 btn sml blue btn_refundView2">환급내용 자세히보기</a></span>-->
									</h4>
									<!-- 고용보험환급안내-->
									<div class="refundInfo_wrap2">
										<!-- #include virtual="/Common/Tab/refundInfo_languageMaster2.asp"-->
									</div>
									<!-- //고용보험환급안내 -->

									<div id="divSa" style="DISPLAY:NONE;">
										<span style="float:right;"><a href="#this" class="mar_l10 btn sml blue btn_refundView2">환급내용 자세히보기</a></span>
										<div style="clear:both;"></div>
										<table class="table_col_type1">
											<colgroup>
												<col style="width:19%">
												<col style="width:19%">
												<col style="width:11%">
												<col style="width:11%">
												<col style="width:11%">
												<col style="width:8%">
												<!--<col style="width:21%">-->
											</colgroup>
											<tbody style="text-align:center;">
												<tr>
													<th>지원대상 분류</th>
													<th>상시근로자 수</th>
													<th>교육비</th>
													<th>환급금</th>
													<th>기업부담금</th>
													<th>환급비율</th>
													<!--<th>환급금내용 자세히보기</th>-->
												</tr>
												<tr>
													<td rowspan="2">우선지원대상기업<br/>(중소기업)</td>
													<td>50명 미만</td>
													<td rowspan="4">400,000원</td>
													<td>262,960원</td>
													<td>137,040원</td>
													<td>65%</td>
													<!--<td rowspan="4"></td>-->
												</tr>
												<tr>
													<td>50명 이상</td>
													<td>236,660원</td>
													<td>163,340원</td>
													<td>59%</td>
												</tr>
												<tr>
													<td rowspan="2">중견 또는 대기업</td>
													<td>1,000명 미만</td>
													<td>157,770원</td>
													<td>242,230원</td>
													<td>39%</td>
												</tr>
												<tr>
													<td>1,000명 이상</td>
													<td>105,180원</td>
													<td>294,820원</td>
													<td>26%</td>
												</tr>
												
											</tbody>
										</table>
										<span class="redTxt"> ※ 사업주위탁훈련인 경우 교육비를 400,000원 납부하고, 출석률 80% 이상인 경우 환급금을 되돌려 받을 수 있습니다.</span><br/>
										<span class="redTxt"> ※ 일반인(실업자 또는 재학생)은 교육비 전액 개인 부담입니다.</span><br/>
									</div>
									
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										근로자 직무능력향상지원 <a href="javascript:openGn();" id="btnOpenGn" class="mar_l10 btn sml blue">환급금액 자세히보기</a>
										<!--<span style="margin-left:607px;"><a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></span>-->
									</h4>
									<!-- 고용보험환급안내-->
									<div class="refundInfo_wrap">
										<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
									</div>
									<!-- //고용보험환급안내 -->

									<div id="divGn" style="DISPLAY:NONE;">
										<span style="float:right;"><a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></span>
										<div style="clear:both;"></div>
										
										<table class="table_col_type1">
											<colgroup>
												<col style="width:19%">
												<col style="width:26%">
												<col style="width:10%">
												<col style="width:12%">
												<col style="width:12%">
											</colgroup>
											<tbody style="text-align:center;">
												<tr>
													<th>지원대상 분류</th>
													<th>대상</th>
													<th>교육비</th>
													<th>개인부담금</th>
													<th>자부담비율</th>
													
												</tr>
												<tr>
													<td rowspan="4">우선지원대상기업<br/>(중소기업)</td>
													<td>비정규직</td>
													<td rowspan="9">400,000원</td>
													<td rowspan="4">137,040원</td>
													<td rowspan="4">34%</td>
												</tr>
												<tr>
													<td>이직 예정자</td>
												</tr>
												<tr>
													<td>무급 휴직자</td>
												</tr>
												<tr>
													<td>정규직</td>
												</tr>
												<tr>
													<td rowspan="5">중견 또는 대기업</td>
													<td>비정규직</td>
													<td>137,040원</td>
													<td>34%</td>
												</tr>
												<tr>
													<td>이직 예정자</td>
													<td>189,630원</td>
													<td>47%</td>
												</tr>
												<tr>
													<td>무급 휴직자</td>
													<td>137,040원</td>
													<td>34%</td>
												</tr>
												<tr>
													<td>정규직(50세이상)</td>
													<td>189,630원</td>
													<td>47%</td>
												</tr>
												<tr>
													<td>3년간 미참여자<br/>(3년간 근로자직무능력향상교육 미교육자)</td>
													<td>189,630원</td>
													<td>47%</td>
												</tr>
											</tbody>
										</table>
										<!--
										<span class="redTxt">※ 근로자 직무능력향상지원(카드발급 대상자)는 개인부담금 70,000원을 납부합니다</span><br/>
										<span class="redTxt">※ 일반인(실업자 또는 재학생)은 교육비 전액 개인 부담입니다</span>
										-->
									</div>
								</div> <!-- // div 환급비 -->					
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>교육소개</h5>
							<!--<p>본 과정은 자바 프로그램을 객체지향적으로 만드는 방법에 대해서 학습하고, 자료구조에 대해서 이해하고 자바를 이용해 이를 직접 구현해보며 Collection 프레임워크를 적절히 활용하고 입출력 프로그램에 대해서 이해하고 java.io 패키지로 제공되는 다양한 입출력 클래스의 특징을 학습하며 스레드를 이해하고 실무에 적용할 수 있도록 하며 네트워크에 대해서 이해하고 에코서버 및 채팅서버 프로그램을 작성한다. 프로그램의 필수적인 요소인 데이터베이스와 자바간의 연결을 통해 실무에 적용 가능한 프로그래밍을 만들 수 있도록 능력을 한 단계 업그레이드 할 수 있는 과정이다.</p>-->
							<p>JAVA언어는 국내 산업 현장에서 수요가 가장 많은 객체지향언어입니다. 웹 개발 전반에 걸쳐 두루 활용될 뿐만 아니라 코드 재사용성이 높아 유지보수가 용이한 언어로 안드로이드 어플개발 등 요즘 화두가 되고 있는 여러 it 기술의 중요한 기초가 되는 언어입니다. 본 과정은 자바 프로그램을 객체지향적으로 만드는 방법에 대해서 학습하는 과정으로 JAVA의 기본 문법을 탄탄히 다질 수 있는 기초 과정입니다.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>자바 프로그램을 객체지향적으로 만드는 방법에 대해서 학습하여 설명할 수 있다.</li>
								<li>자료구조에 대해서 이해하고 자바를 이용해 이를 직접 구현해보며 Collection 프레임워크를 적절히 활용할 수 있다.</li>
								<li>입출력 프로그램에 대해서 이해하고 java.io 패키지로 제공되는 다양한 입출력 클래스의 특징을 설명할 수 있다. </li>
								<li>스레드를 이해하고 실무에 적용할 수 있다.</li>
								<li>네트워크에 대해서 이해하고 에코서버 및 채팅서버 프로그램을 작성할 수 있다. </li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>Java 언어를 처음 배우시는 분</li>
								<!--<li>Java 언어의 기초 구문부터 시작하려는 분 </li>-->
								<li>객체지향 프로그래밍의 개념을 배우고자 하시는 분</li>
								<li>안드로이드 어플 개발에 관심이 있는 분</li>
								<li>웹 개발 관련 기술을 습득하고자 하시는 분</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<div style="float:left; width:180px;">
								<h5>교재 제공</h5>
								<img src="/Images/Content/img_BookCover_iamjava.jpg" style="margin-left:15px; width:160px;  border:solid 1px #565656;"/>
							</div>
							<div style="float:left; width:650px; margin-top:27px; margin-left:15px;">
								<p style="margin-top:235px;">
									'난 정말 JAVA를 공부한 적이 없다구요' <Br/>윤성우 저 / 오렌지미디어
									
								</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type1" style="margin-left:2%;">
								<caption>JAVA Web 커리큘럼</caption>
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
										<th scope="row" rowspan="4">Java Beginning</th>
										<td rowspan="4" class="c">자바 기본문법</td>
										<td>자바의 개요와 개발 환경 구축, 데이터의 구분을 위한 자바의 자료형을 학습한다.</td>
									</tr>
									<tr>
										<td>데이터를 조작하기 위한 연산자, 필요한 작업만을 선택적으로 해야 할 경우 사용하는 선택문 학습한다.</td>
									</tr>
									<tr>
										<td>특정 부분의 문장을 반복하게 만들어 주는 반복문 학습 한다.</td>
									</tr>
									<tr>
										<td>자료형이 동일한 여러 개의 값을 연이어 저장할 수 있도록 하는 기억 공간의 집합체인 배열과 메소드 정의와 호출방법을 익힌다.</td>
									</tr>

									<tr>
										<th scope="row" rowspan="6">Java Fundamental</th>
										<td rowspan="2" class="c">객체 지향 프로그래밍</td>
										<td>객체지향의 개념과 클래스 설계, 객체 인스턴스 생성 학습한다.</td>
									</tr>
									<tr>
										<td>메소드 오버로딩과 생성자를 학습한다.</td>
									</tr>
									<tr>
										<td rowspan="4" class="c">상속</td>
										<td>코드 재활용을 위한 상속을 이해한다.</td>
									</tr>
									<tr>
										<td>메소드 오버라이딩과 업캐스팅 다운 캐스팅을 학습한다</td>
									</tr>
									<tr>
										<td>추상 클래스를 이해하고 정의하는 방법을 익힌다.</td>
									</tr>
									<tr>
										<td>인터페이스를 사용한 다중 상속에 대해 알아본다.</td>
									</tr>

									<tr>
										<th scope="row" rowspan="8">Java Advanced</th>
										<td rowspan="3" class="c">자바 주요 클래스</td>
										<td>자바 패키지 중 자주 사용되는 클래스를 살핀다.</td>
									</tr>
									<tr>
										<td>자료구조인 컬렉션에 대해서 학습한다.</td>
									</tr>
									<tr>
										<td>자바클래스 실습</td>
									</tr>
									<tr>
										<td rowspan="5" class="c">IO/스레드</td>
										<td>입출력 프로그램에 대해서 이해한다.</td>
									</tr>
									<tr>
										<td>java.io 패키지로 제공되는 다양한 입출력 클래스의 특징을 설명할 수 있다.</td>
									</tr>
									<tr>
										<td>스레드를 이해하고 실무에 적용할 수 있다.</td>
									</tr>
									<tr>
										<td>멀티스레드 프로그래밍을 학습한다.</td>
									</tr>
									<tr>
										<td>스레드의 동기화에 대해서 학습한다.</td>
									</tr>
									
								</tbody>
							</table>
							<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>
						</div>
						
						<!-- 자격증과정 소개 -->
						<!-- #include virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCJPM.asp"-->
						<!-- /자격증과정 소개 -->
						
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Java_Weekend" class="btn mid green1">지원하기</a>
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