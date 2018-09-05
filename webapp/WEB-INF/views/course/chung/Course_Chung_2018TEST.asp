<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<!DOCTYPE html>
<!-- not REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			$(".snb_1709 a.newdepth1").eq(4).addClass("on");			// 청년취업아카데미
			//$(".snb_1709 .newdepth2_wrap").eq(4).addClass("on");	// 청년취업아카데미
			//$(".snb_1709 .newdepth2_wrap.no2").find("li a").eq(0).addClass("on");  	// 인문계특화 JAVA Web&Mobile 고급인력 양성과정
		});
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/Kukka/M/Course_Kukka_JavaBigData_2016.asp";
		*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<style>
	/* white and narrowSNB */
	.moveTop { width:175px !important; background:#17538e url('/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	#Container_Wrap { min-height:initial; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
</style>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseSupport_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p style="letter-spacing:-1px;">
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>국비지원무료과정
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>청년취업아카데미
						</p>
						<h4 style="float:left; letter-spacing:0px;" >2018년 인문계특화 청년취업아카데미</h4>
						<div style="clear:both; height:10px;"></div>
					</div>

					<section>
						<div class="con_wrap1709">
							<div class="divTable">
								<table style="box-shadow:none !important;">
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th>교육기간</th>
											<td>
												학교별 기간 확인
											</td>
											<th>강의시간</th>
											<td>
												09:00~17:00(8시간 총 664시간)
											</td>
										</tr>
										<tr>
											<th>교육비용</th>
											<td>무료</td>
											<th>교육비지원</th>
											<td>국비지원</td>
										</tr>
										<tr>
											<th>교육정원</th>
											<td>20명</td>
											<th>문의</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table> 
								<div style="clear:both; height:10px;"></div>
							</div>
							<div class="con_wrap1709" style="float:right;">
								<img src="Images/img_gov_employmentLabor.png"/>								
								<img src="Images/img_gov_industryManpower.png"/>								
							</div>
							<div style="clear:both;"></div>
						</div>
						
						<div class="con_wrap1709">
							<h5>청년취업아카데미 소개</h5>
							<p>인문, 사회, 경상, 예체능 계열 전공학생들을 대상으로 제 4차 산업혁명에 맞추어 각 전공적인 지식과 IT/SW지식을 융합하여 신 IT인재를 양성하는 교육을 실시하고, 해당 산업분야로 진출할 수 있도록 취업연계를 제공합니다.</p>
						</div>
						
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<p>
								대학교 4학년 졸업 예정자<br/>
								<b>* 협약대학의 학생일 경우 학점 인정</b><br/>(단, 타대학 학생 지원 가능하지만 학점인정은 불가)
							</p>
						</div>
						
						<div class="con_wrap1709">
							<h5>선발</h5>
							<p>
								1. 적성검사(고용노동부 워크넷 적성검사 검색)<br/>
								2. 개인별 상담 진행 후 선발 
							</p>
						</div>
						
						<div class="con_wrap1709">
							<h5>교육특전</h5>
							<p>
								1.	전액 무료 교육<br/>
								2.	수당지급(취업성공패키지 연계 시 월 최대 284,000원)<br/>
								3.	협약 대학 별 학점 인정<br/>
								4.	비트교육센터 취업프로세스를 통한 취업지원 및 컨설팅<br/>
								5.	비트출신 수료증 및 민간자격증(유료) 습득 기회
							</p>
						</div>
						
						<div class="con_wrap1709">
							<h5>교육내용 및 일정</h5>
							<div class="divTable">
								<table>
									<caption>교육내용</caption>
									<colgroup>
										<col style="width:23%">
										<col style="width:23%">
										<col style="width:15%">
										<col style="width:14%">
										<col style="width:7%">
										<col style="width:18%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">과정명</th>
											<th scope="col">내용</th>
											<th scope="col">교육기간</th>
											<th scope="col">모집마감</th>
											<th scope="col">정원</th>
											<th scope="col">교육신청</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="c">JAVA <br/>Web&amp;Mobile 엔지니어링 실무적용과정 A</td>
											<td rowspan="2">
												- JAVA언어 기초+중급<br/>
												- Android 사용법<br/>
												- 웹 개발 방법<br/>
												- 데이터 저장관리<br/>
												- 실전 조별 프로젝트
											</td>
											<td>2018.07.04 ~ <br/>2018.11.22</td>
											<td>2018.06.22</td>
											<td>20</td>
											<td class="c">
												<span style="letter-spacing:-2px">부산외국어대학교</span><br/>교육장<br/>
												<!-- 수강신청btn -->
												<a href="/Register/Request/register_chung1.asp" title="수강신청" style="margin:0 auto; line-height:16px; font-size:16px;" class="btnBlueBorder small">
													수강신청
												</a>
											</td>
										</tr>
										<tr>
											<td class="c">JAVA <br/>Web&amp;Mobile 엔지니어링 실무적용과정 B</td>
											<td>2018.07.05 ~ <br/>2019.01.25</td>
											<td>2018.06.22</td>
											<td>20</td>
											<td class="c">
												한남대학교<br/>교육장 <br/>
												<!-- 수강신청btn -->
												<a href="/Register/Request/register_chung1.asp" title="수강신청" style="margin:0 auto; line-height:16px; font-size:16px;" class="btnBlueBorder small">
													수강신청
												</a>
											</td>
										</tr>
										<tr>
											<td class="c">4차 산업혁명대비 빅데이터 엔지니어링 실무적용 과정A</td>
											<td rowspan="3">
												- JAVA언어 기초+중급<br/>
												- 웹개발 방법<br/>
												- Linux 프로그래밍<br/>
												- 빅데이터 수집, <br/> &nbsp; 저장 기술<br/>
												- 빅데이터 분석 <br/> &nbsp; 시각화 기술<br/>
												- 실전 조별 프로젝트
											</td>
											<td>2018.07.02 ~ <br/>2018.11.20</td>
											<td>2018.06.22</td>
											<td>20</td>
											<td class="c">
												비트교육센터<br/>교육장
												<!-- 수강신청btn -->
												<a href="/Register/Request/register_chung1.asp" title="수강신청" style="margin:0 auto; line-height:16px; font-size:16px;" class="btnBlueBorder small">
													수강신청
												</a>
											</td>
										</tr>
										<tr>
											<td class="c">4차 산업혁명대비 빅데이터 엔지니어링 실무적용 과정B</td>
											<td>2018.07.03 ~ <br/>2018.01.22</td>
											<td>2018.06.22</td>
											<td>20</td>
											<td class="c">
												순천향대학교<br/>교육장
												<!-- 수강신청btn -->
												<a href="/Register/Request/register_chung1.asp" title="수강신청" style="margin:0 auto; line-height:16px; font-size:16px;" class="btnBlueBorder small">
													수강신청
												</a>
											</td>
										</tr>
										<tr>
											<td class="c">4차 산업혁명대비 빅데이터 엔지니어링 실무적용 과정C</td>
											<td>2018.07.04 ~ <br/>2018.12.19</td>
											<td>2018.06.22</td>
											<td>20</td>
											<td class="c">
												인제대학교<br/>교육장
												<!-- 수강신청btn -->
												<a href="/Register/Request/register_chung1.asp" title="수강신청" style="margin:0 auto; line-height:16px; font-size:16px;" class="btnBlueBorder small">
													수강신청
												</a>
											</td>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="con_wrap1709">
							<h5>세부 커리큘럼</h5>
							<div class="divTable">
								<table class="center">
									<caption>교육내용</caption>
									<colgroup>
										<col style="width:28%">
										<col style="width:40%">
										<col style="width:15%">
										<col style="width:17%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">과정명</th>
											<th scope="col">협약대학</th>
											<th scope="col">인정학점</th>
											<th scope="col">커리큘럼</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>JAVA <br/>Web&amp;Mobile 엔지니어링<br/>실무적용과정 A</td>
											<td>
												<div class="fl">부산외국어대학교</div>
												<div class="fl mar_l10"><img src="Images/Logo_부산외국어대학교.png" style="height:30px;"/></div>
												<div style="clear:both;"></div>
											</td>
											<td>18학점</td>
											<td class="c">
												<a href="Files/부산외국어대학교.pdf" target="_blank" title="소개자료" style="margin:0 auto; line-height:16px; font-size:16px;" class="btnRedBorder small">
													소개자료 PDF
												</a>
											</td>
										</tr>
										<tr>
											<td>JAVA <br/>Web&amp;Mobile 엔지니어링<br/>실무적용과정 B</td>
											<td>
												<div class="fl" style="margin-left:40px;">한남대학교</div>
												<div class="fl mar_l10"><img src="Images/Logo_한남대학교.png" style="height:30px;"/></div>
												<div style="clear:both;"></div>
											</td>
											<td>9학점</td>
											<td class="c">
												<a href="Files/한남대학교.pdf" target="_blank" title="소개자료" style="margin:0 auto; line-height:16px; font-size:16px;" class="btnRedBorder small">
													소개자료 PDF
												</a>
											</td>
										</tr>
										<tr>
											<td rowspan="8">4차 산업혁명대비 빅데이터<br/>엔지니어링 실무적용 과정A</td>
											<td>
												<div class="fl" style="margin-left:25px;">성균관대학교</div>
												<div class="fl mar_l10"><img src="Images/Logo_성균관대학교.png" style="height:30px;"/></div>
												<div style="clear:both;"></div>
											</td>
											<td>1학점</td>
											<td rowspan="8" class="c">
												<a href="Files/비트교육센터.pdf" target="_blank" title="소개자료" style="margin:0 auto; line-height:16px; font-size:16px;" class="btnRedBorder small">
													소개자료 PDF
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<div class="fl" style="margin-left:10px;">이화여자대학교</div>
												<div class="fl mar_l10"><img src="Images/Logo_이화여자대학교.png" style="height:30px;"/></div>
												<div style="clear:both;"></div>
											</td>
											<td>1학점</td>
										</tr>
										<tr>
											<td>
												<div class="fl" style="margin-left:10px;">덕성여자대학교</div>
												<div class="fl mar_l10"><img src="Images/Logo_덕성여자대학교.png" style="height:30px;"/></div>
												<div style="clear:both;"></div>
											</td>
											<td>2학점</td>
										</tr>
										<tr>
											<td>
												<div class="fl" style="margin-left:35px;">가천대학교</div>
												<div class="fl mar_l10"><img src="Images/Logo_가천대학교.png" style="height:30px;"/></div>
												<div style="clear:both;"></div>
											</td>
											<td>160시간당<br/>3학점</td>
										</tr>
										<tr>
											<td>
												<div class="fl" style="margin-left:35px;">수원대학교</div>
												<div class="fl mar_l10"><img src="Images/Logo_수원대학교.png" style="height:30px;"/></div>
												<div style="clear:both;"></div>
											</td>
											<td>학점제외</td>
										</tr>
										<tr>
											<td>
												<div class="fl" style="margin-left:35px;">중부대학교</div>
												<div class="fl mar_l10"><img src="Images/Logo_중부대학교.png" style="height:30px;"/></div>
												<div style="clear:both;"></div>
											</td>
											<td>3학점</td>
										</tr>
										<tr>
											<td>
												<div class="fl" style="margin-left:10px;">강릉원주대학교</div>
												<div class="fl mar_l10"><img src="Images/Logo_강릉원주대학교.png" style="height:30px;"/></div>
												<div style="clear:both;"></div>
											</td>
											<td>학점제외</td>
										</tr>
										<tr>
											<td>
												<div class="fl" style="margin-left:35px;">인하대학교</div>
												<div class="fl mar_l10"><img src="Images/Logo_인하대학교.png" style="height:30px;"/></div>
												<div style="clear:both;"></div>
											</td>
											<td>3학점</td>
										</tr>
										<tr>
											<td class="c">4차 산업혁명대비 빅데이터<br/>엔지니어링 실무적용 과정B</td>
											<td>
												<div class="fl" style="margin-left:23px;">순천향대학교</div>
												<div class="fl mar_l10"><img src="Images/Logo_순천향대학교.png" style="width:140px;"/></div>
												<div style="clear:both;"></div>
											</td>
											<td>6학점</td>
											<td class="c">
												<a href="Files/순천향대학교.pdf" target="_blank" title="소개자료" style="margin:0 auto; line-height:16px; font-size:16px;" class="btnRedBorder small">
													소개자료 PDF
												</a>
											</td>
										</tr>
										<tr>
											<td class="c">4차 산업혁명대비 빅데이터<br/>엔지니어링 실무적용 과정C</td>
											<td>
												<div class="fl" style="margin-left:35px;">인제대학교</div>
												<div class="fl mar_l10"><img src="Images/Logo_인제대학교.png" style="height:30px;"/></div>
												<div style="clear:both;"></div>
											</td>
											<td>15학점</td>
											<td class="c">
												<a href="Files/인제대학교.pdf" target="_blank" title="소개자료" style="margin:0 auto; line-height:16px; font-size:16px;" class="btnRedBorder small">
													소개자료 PDF
												</a>
											</td>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="con_wrap1709">
							<h5>취업성공패키지 준비 서류</h5>
							<p>- 취업성공패키지 발급</p>
							<p><b>※ 위의 카드발급은 주소지 관할 고용센터에서 발급 가능합니다.</b></p>
							<p style="color:#7f7f7f; font-size:8pt; line-height:18px;">※ 단, 훈련장려금은 1개월 단위 출석률이 80% 이상인 경우에만 지급받을 수 있습니다.</p>
							<p style="color:#7f7f7f; font-size:8pt; line-height:18px;">※ 실업급여를 받으시는 동안이나 공공근로사업에 참여하고 계신 동안에는 훈련장려금을 지급받을 수 없습니다.</p>
							
							<br/>
							<p>- 취업성공패키지 발급</p>
							<ul class="pd_l5">
								<li>
									<p class="diagram_wrap l" style="margin-top:0px;"><img src="/Images/Content/Diagram/img_course_diagram_06.PNG" style="width:100%;"></p>
								</li>
							</ul>
							<!--<p> - 증명사진 2매</b><p>-->
						</div>
						
					</section>
				</div>
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>