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
			$(".snb .depth2_wrap.no5").find("li a").eq(12).addClass("on");
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
			<div class="banner pd_t35">
				<h3><span class="courseName">Spring 서비스 및 JPA 구현</span></h3>
				<h4>소프트웨어 시스템을 프리젠테이션 티어와 서비스 티어, 레파지토리 티어로 구분하고,<br>
				각 티어에 필수적인 Spring MVC 프레임워크, 원격 통합 서비스, 레파지토리 서비스 기술을<br>
				사용하여 Java 애플리케이션을 개발하는 방법을 습득하게 하며, Spring MVC<br>
				웹 애플리케이션 개발 과정과 Spring 서비스 및 JPA 구현 과정으로 구성된다.</h4>
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
						<h4 class="fl">Spring 서비스 및 JPA 구현</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">단기 / 핵심역량과정</a>
							<a href="#this" class="last on">Spring 서비스 및 JPA 구현</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>Spring 서비스 및 JPA 구현</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">Spring 서비스 및 JPA 구현</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul class="ul_dot_gray">
													<li>2015.06.10 ~ 2015.06.12 (3일 / 총 21시간)</li>
													<li>2015.09.15 ~ 2015.09.17 (3일 / 총 21시간)</li>
													<li>2015.11.18 ~ 2015.11.20 (3일 / 총 21시간)</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>09:00 ~ 17:00 (1일 7시간 / 월 ~ 금)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>260,000원<span class="greenTxt"> 마일리지 5%적립 (13,000원)</span></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1423</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">사업주 훈련 : 우선지원대상 기업기준 273,524 원 | 바우처<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
										-->
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
							<p>Spring 프레임워크는 Java 애플리케이션 개발의 사실 상 표준 프레임워크로, 전자정부 표준 프레임워크도 Spring  프레임워크를 기반으로 하고 있다. Spring 서비스 프레임워크는 Spring MVC 애플리케이션을 개발하는 것과 유사한 방식으로 손쉽게 RESTful 서비스를 구현할 수 있도록 많은 기능을 제공한다. 또한 Apache Camel 프레임워크는 ESB(Enterprise Service Bus)을 구현하는 사실 상 표준 엔진으로 단독으로 또는 다양한 통합 프레임워크의 핵심 엔진으로 사용되고 있다. 우리는 이 과정에서Spring 프레임워크와 Apache Camel 프레임워크를 활용하는 다음과 같은 기술을 학습한다.
							</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>Java EE 기반 기술에 대한 이해</li>
								<li>실무 프로젝트를 수행할 수 있는 Java  필수 기술을 습득</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<li>Java Programming</li>
								<li>객체지향 개념의 이해</li>
								<li>Spring MVC 웹 애플리케이션 개발</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type1">
								<caption>Spring 서비스 및 JPA 구현</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:70%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">구분</th>
										<th scope="col">내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="c">Spring 서비스 기술</td>
										<td>
											<ul class="ul_dot_gray">
												<li>Java EE 서비스 기반 기술</li>
												<li>원격 서비스, Java 분산 객체 기술</li>
												<li>웹 서비스, REST  서비스</li>
												<li>메시징 서비스,  ESB</li>
												<li>Spring 원격 서비스 지원</li>
												<li>Spring RMI 서비스</li>
												<li>Spring HttpInvoke 서비스</li>
												<li>Spring REST 서비스</li>
												<li>Spring REST 클라이언트</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="c">Spring 통합 기술</td>
										<td>
											<ul class="ul_dot_gray">
												<li>Spring JMS 서비스</li>
												<li>Apache ActiveMQ 및 Spring 설정</li>
												<li>JMS 메시지 생성자 구현</li>
												<li>JMS 메시지 소비자 구현</li>
												<li>Apache Camel 개요</li>
												<li>Apache Camel 기본 개념</li>
												<li>Apache Camel 프로젝트</li>
												<li>Apache Camel 서비스 구현</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="c">Spring JPA 기술</td>
										<td>
											<ul class="ul_dot_gray">
												<li>Java EE 레파지토리 기반 기술</li>
												<li>레파지토리 티어 개요</li>
												<li>Java 데이터 액세스 개요</li>
												<li>데이터베이스 설정</li>
												<li>Java JDBC</li>
												<li>Spring JDBC</li>
												<li>Spring 트랜잭션</li>
												<li>JPA API / 설정</li>
												<li>Spring 프레임워크 통합 설정</li>
												<li>엔터티 객체 매핑</li>
												<li>JPQL 질의</li>
												<li>Criteria  질의</li>
												<li>JPA 어노테이션</li>
												<li>CRUD  구현</li>
												<li>엔터티 객체 관계</li>
												<li>상속성 매핑</li>
												<li>고급 질의</li>
												<li>Spring Data JPA 개요</li>
												<li>CRUD 구현</li>
												<li>질의 메서드 / 사용</li>
											</ul>
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