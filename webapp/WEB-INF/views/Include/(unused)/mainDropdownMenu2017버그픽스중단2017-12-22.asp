<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>
		<!-- main dropdown menu -->
			<style>
				.mainDropdownMenu.depth0 { z-index:30; }
				.mainDropdownMenu.depth0.no1 { min-width:260px; /* min-width:154px; */ }
				.mainDropdownMenu.depth0.no1 .mainDropdownMenu.depth2.no1 { min-width:107px; }
				.mainDropdownMenu.depth0.no1 .mainDropdownMenu.depth2.no2 { min-width:107px; }
				.mainDropdownMenu.depth0.no1 .mainDropdownMenu.depth2.no3 { min-width:107px; }
				.mainDropdownMenu.depth0.no1 .mainDropdownMenu.depth2.no4 { min-width:107px; }
				.mainDropdownMenu.depth3.no1 { min-width:145px; }
				.mainDropdownMenu.depth0.no2 { min-width:124px; }
				.mainDropdownMenu.depth0.no2 .depth2.no1 { min-width:215px; }
				.mainDropdownMenu.depth0.no2 .depth2.no2 { min-width:215px; }
				.mainDropdownMenu.depth0.no2 .depth2.no3 { min-width:215px; }
				.mainDropdownMenu.depth0.no2 .depth2.no4 { min-width:215px; }
				.mainDropdownMenu.depth0.no2 .depth2.no5 { min-width:215px; }
				.mainDropdownMenu.depth0.no2 .depth2.no6 { min-width:215px; }
				.mainDropdownMenu.depth0.no2 .depth2.no7 { min-width:215px; }
				.mainDropdownMenu.depth0.no3 { min-width:124px; }
				.mainDropdownMenu.depth0.no3 .depth2.no1 { min-width:165px; }
				.mainDropdownMenu.depth0.no3 .depth2.no2 { min-width:165px; }
				.mainDropdownMenu.depth0.no3 .depth2.no3 { min-width:165px; }
				.mainDropdownMenu.depth0.no3 .depth2.no4 { min-width:165px; }
				.mainDropdownMenu.depth0.no4 { min-width:124px; }
				.mainDropdownMenu.depth0.no4 .depth2.no1 { min-width:145px; }
				.mainDropdownMenu.depth0.no4 .depth2.no2 { min-width:145px; }
				.mainDropdownMenu.depth0.no4 .depth2.no3 { min-width:145px; }
				.mainDropdownMenu.depth0.no4 .depth2.no4 { min-width:145px; }
				.mainDropdownMenu.depth0.no5 { min-width:124px; }
				.mainDropdownMenu.depth0.no5 .depth2.no1 { min-width:145px; }
				.mainDropdownMenu.depth0.no5 .depth2.no2 { min-width:145px; }
				.mainDropdownMenu.depth0.no5 .depth2.no3 { min-width:145px; }
				.mainDropdownMenu.depth0.no5 .depth2.no4 { min-width:145px; }
				.mainDropdownMenu.depth0.no6 { min-width:124px; }
				
				.mainDropdownMenu.depth0.no1 { left:0px; }
				.mainDropdownMenu.depth0.no2 { left:119px; }
				.mainDropdownMenu.depth0.no3 { left:237px; }
				.mainDropdownMenu.depth0.no4 { left:362px; }
				.mainDropdownMenu.depth0.no5 { left:482px; }
				/*.mainDropdownMenu.depth0.no6 { left:535px; }*/
				
				.mainDropdownMenu {
					display:none;
					font-size:15px;
					font-weight:400;
					background-color:#fff;
				}
				.mainDropdownMenu.depth0 {
					position:absolute;
					top:-1px;
					left:0px;
					box-shadow:0px 3px 7px #797979;  /* old : #373737 */
					border-left:2px solid #1b499b;
					border-right:2px solid #1b499b;
					border-bottom:2px solid #1b499b;
					/*
					border-right:1px solid #a5a5a4;
					border-bottom:1px solid #a5a5a4;
					*/
				} /* top:142px; top:-20px;*/
				
				.mainDropdownMenu.depth1 {
					position:relative;
				} 
				.mainDropdownMenu.depth2 {
					position:relative;
					left:-1px;
					top:0px;
				}
				.mainDropdownMenu.depth3 {
					position:relative;
					left:-1px;
					top:0px;
				}
				
				.mainDropdownMenu .divTop1 {
					height:8px;
				}
				.mainDropdownMenu .divTop2 {
					height:8px;
				} 
				.mainDropdownMenu .divBlank {
					padding-left:15px;
					padding-right:15px;
				}
				.mainDropdownMenu .divMiddle {
					padding-left:1px;
					padding-right:1px;
					/* margin-left:15px; */
					margin-right:15px;
					height:33px;
					line-height:33px;
					cursor:pointer;
				}
				.mainDropdownMenu .divMiddle .divMiddleInner {
					margin-left:15px; 
				}
				.mainDropdownMenu.depth0:not(.no5) .divMiddle .divMiddleInner.on {
					/* 단기핵심과정 / 고급과정 / 전문가과정 / 국비지원무료과정 */
					background:#1b499b url('/Images/Icons/icn_ArrowRightOnBlue.png') no-repeat 208px 9px;
					color:#ffffff !important;				
				}
				.mainDropdownMenu.depth0.no2 .divMiddle .divMiddleInner.on {
					/* 고급과정 */
					background:#1b499b url('/Images/Icons/icn_ArrowRightOnBlue.png') no-repeat 170px 7px;
					color:#ffffff !important;				
				}
				.mainDropdownMenu.depth0.no5 .divMiddle .divMiddleInner.on {
					/* 초중고SW교육 */
					background:#1b499b;
					color:#ffffff !important;				
				}
				.mainDropdownMenu.depth2 .divMiddle .divMiddleInner.on { /* all the depth2 */
					background:#1b499b;
				}
				.mainDropdownMenu.depth3.no4 .divMiddle .divMiddleInner.on {
					background:#1b499b;
				}
				.mainDropdownMenu.depth0.no2 .depth1 .divMiddle .divMiddleInner.on { /* 단기핵심과정 */
					background:#1b499b;
				}
				.mainDropdownMenu.depth0.no6 .depth1 .divMiddle .divMiddleInner.on { /* 초중고SW교육 */
					background:#1b499b;
				}
				
				.mainDropdownMenu.depth0.no1 .depth1 .divMiddle .divMiddleInner.on { /* 단기핵심과정 - all the depth1 */
					background:#1b499b url('/Images/Icons/icn_ArrowRightOnBlue.png') no-repeat 198px 7px; 
				}
				.mainDropdownMenu.depth0.no1 .depth2.no1 .divMiddle .divMiddleInner.on { /* 단기핵심과정 - all the depth2.no1 : Programming */
					background:#1b499b url('/Images/Icons/icn_ArrowRightOnBlue.png') no-repeat 173px 7px; 
				}
				.mainDropdownMenu.depth0.no1 .depth3.no1 .divMiddle .divMiddleInner.on { /* 단기핵심과정(Programming)-서울-Java,... */
					background:#1b499b url('/Images/Icons/icn_ArrowRightOnBlue.png') no-repeat 160px 7px; 
				}
				.mainDropdownMenu.depth0.no4 .depth1 .divMiddle .divMiddleInner.on { /* 국비지원무료과정 - all the depth1 */
					background:#1b499b url('/Images/Icons/icn_ArrowRightOnBlue.png') no-repeat 180px 7px; 
				}
				
				.mainDropdownMenu .divMiddleInner {
					padding-left:15px;
					padding-right:15px;
					height:28px;
					line-height:28px;
				}
				.mainDropdownMenu .divMiddleInner.twolines {
					height:56px;
				}
				.mainDropdownMenu.depth1 .divMiddle {
				} 
				.mainDropdownMenu.depth2 .divBlank {
					border-left:1px solid #e5e5e4; 
					height:33px;
				}
				.mainDropdownMenu.depth2 .divMiddle {
					/* padding-left:15px; */
					border-left:1px solid #e5e5e4; 
				}
				.mainDropdownMenu.depth3 .divBlank {
					border-left:1px solid #e5e5e4; 
					height:33px;
				}
				.mainDropdownMenu.depth3 .divMiddle {
					/* padding-left:15px; */
					border-left:1px solid #e5e5e4; 
				}
				.mainDropdownMenu.depth4 .divBlank {
					border-left:1px solid #e5e5e4; 
					height:33px;
				}
				.mainDropdownMenu.depth4 .divMiddle {
					/* padding-left:15px; */
					border-left:1px solid #e5e5e4; 
				}
				.mainDropdownMenu .divMiddle.long {
					letter-spacing:-1px;
				}
				.mainDropdownMenu .divMiddle.twolines {
					/*
					padding-top:5px;
					padding-bottom:5px;
					*/
					height:61px;
				}
				.mainDropdownMenu .divBottom {
					height:8px;

				}
				.fl {
					float:left;
				}
			</style>
			<!-- depth0 no1 : 단기 프로그래밍 -->
			<div class="mainDropdownMenu depth0 no1" >
				<!--<img src="Images/Icons/MainPage_Menubar__triangle.png" style="position:relative; top:-13px; left:-91px;"/>-->
				<div class="mainDropdownMenu depth1 no1 fl" style="width:250px;">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">Programming</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">Data Science</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">Java</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">JavaScript</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">Database</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">Project Management(PM)</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">Mobile</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">SW Engineering</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">Embedded</div></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no1 fl" style="width:220px;">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle"><div class="divMiddleInner " style="width:160px;">[서울] 비트교육센터</div></div>
					<div class="divMiddle"><div class="divMiddleInner " style="width:160px;">[대전] 대전캠퍼스</div></div>
					<div class="divMiddle"><div class="divMiddleInner " style="width:160px;">[부산] 부산캠퍼스</div></div>
					<div class="divMiddle"><div class="divMiddleInner " style="width:160px;">[군포] 군포캠퍼스</div></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth3 no1 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:150px;">C 프로그래밍</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:150px;">Java 프로그래밍</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:150px;">C++ 프로그래밍</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:150px;">자료구조/알고리즘</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:150px;">Python 프로그래밍</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:150px;">C# 프로그래밍</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:150px; letter-spacing:-2px;">SW 자율학습 지도 커뮤니티</div></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth4 no1 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_c.asp">
						<div class="divMiddleInner" style="width:140px;">[주중반] C 프로그래밍</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_C_Weekend.asp">
						<div class="divMiddleInner" style="width:140px;">[주말반] C 프로그래밍</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth4 no2 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_Java.asp">
						<div class="divMiddleInner" style="width:160px;">[주중반] Java 프로그래밍</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_Java_Weekend.asp">
						<div class="divMiddleInner" style="width:160px;">[주말반] Java 프로그래밍</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth4 no3 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_cPlus.asp">
						<div class="divMiddleInner" style="width:160px;">[주중반] C++ 프로그래밍</div>
					</div>
					<div class="divMiddle" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
						<div class="divMiddleInner" style="width:160px;">[주말반] C++ 프로그래밍</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth4 no4 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_c2.asp">
						<div class="divMiddleInner" style="letter-spacing:-2px;">[주말반/초급] 자료구조 및 초급 알고리즘</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_algorithmIntermediate.asp">
						<div class="divMiddleInner" style="letter-spacing:-2px;">[주말반/중급] 문제해결을 위한 알고리즘</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_algorithmAdvanced.asp">
						<div class="divMiddleInner" style="letter-spacing:-2px;">[주말반/고급] 문제해결을 위한 알고리즘</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth4 no5 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_Python.asp">
						<div class="divMiddleInner" style="width:180px;">[주중반] Python 프로그래밍</div>
					</div>
					<div class="divMiddle" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">[주말반] Python 프로그래밍</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth4 no6 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_cSharp.asp">
						<div class="divMiddleInner" style="width:160px;">[주중반] C# 프로그래밍</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth4 no7 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_SelfLearning.asp">
						<div class="divMiddleInner" style="width:170px; letter-spacing:-1px;">이론 / 프로젝트 멘토링 과정</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<!-- no2 : 대전캠퍼스 -->
				<div class="mainDropdownMenu depth3 no2 fl">
					<div class="divTop1"></div>
					<div class="divTop2" ></div>
					<div class="divBlank"></div>
					<div class="divMiddle" href="/Course/localCampus/localCampus_Daejeon_introduction.asp">
						<div class="divMiddleInner" style="width:140px;">대전캠퍼스 소개</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Daejeon_c.asp">
						<div class="divMiddleInner" style="width:140px;">C 프로그래밍</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Daejeon_cPlus.asp">
						<div class="divMiddleInner" style="width:140px;">C++ 프로그래밍</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Daejeon_java.asp">
						<div class="divMiddleInner" style="width:140px;">Java 프로그래밍</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<!-- // no2 : 대전캠퍼스 -->
				<!-- no3 : 부산캠퍼스 -->
				<div class="mainDropdownMenu depth3 no3 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/localCampus/localCampus_Busan_introduction.asp">
						<div class="divMiddleInner" style="width:140px;">부산캠퍼스 소개</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Busan_c.asp">
						<div class="divMiddleInner" style="width:140px;">C 프로그래밍</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Busan_java.asp">
						<div class="divMiddleInner" style="width:140px;">Java 프로그래밍</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Busan_c2.asp">
						<div class="divMiddleInner" style="width:140px;">자료구조</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<!-- // no3 : 부산캠퍼스 -->
				<!-- no4 : 군포캠퍼스 -->
				<div class="mainDropdownMenu depth3 no4 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/localCampus/localCampus_Gunpo_introduction.asp">
						<div class="divMiddleInner" style="width:140px;">군포캠퍼스 소개</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Gunpo_c.asp">
						<div class="divMiddleInner" style="width:140px;">C 프로그래밍</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Gunpo_cPlus.asp">
						<div class="divMiddleInner" style="width:140px;">C++ 프로그래밍</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Gunpo_c2.asp">
						<div class="divMiddleInner" style="width:140px;">자료구조</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<!-- // no4 : 군포캠퍼스 -->
				<div class="mainDropdownMenu depth2 no2 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_AnalysisMachineLearning.asp">
						<div class="divMiddleInner long" style="width:295px;">R을 사용한 데이터 분석과 머신러닝 (초급)</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_AnalysisMachineLearning2.asp">
						<div class="divMiddleInner long" style="width:295px;">R을 사용한 데이터 분석과 머신러닝 (중급)</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_PracticalMachineLearningPython.asp">
						<div class="divMiddleInner" style="width:295px;">실용 머신러닝 초급-Python</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_ExcelMachineLearning.asp">
						<div class="divMiddleInner" style="width:295px; letter-spacing:-1px;">즉각 활용하는 Excel을 사용한 데이터 사이언스 입문</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no3 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_servletJsp.asp">
						<div class="divMiddleInner" style="width:220px;">Servlet &amp; JSP 프로그래밍</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_spring.asp">
						<div class="divMiddleInner" style="width:220px;">Spring Framework 과정</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_aiojava.asp">
						<div class="divMiddleInner" style="width:220px;">All-in-One Java Application 개발</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no4 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle long" href="/Course/ShortCourse/DetailPage/Course_HTML5.asp">
						<div class="divMiddleInner" style="width:260px;">웹개발자를 위한 HTML5(HTML5+CSS3)</div>
					</div>
					<div class="divMiddle" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
						<div class="divMiddleInner" style="width:260px;">실전 jQuery</div>
					</div>
					<div class="divMiddle long" href="/Course/ShortCourse/DetailPage/Course_JavaScript.asp">
						<div class="divMiddleInner" style="width:260px;">웹개발자를 위한 JavaScript &amp; Ajax</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_WebPublishing.asp">
						<div class="divMiddleInner" style="width:260px;">Web Publishing 실무</div>
					</div>
					<div class="divMiddle" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
						<div class="divMiddleInner" style="width:260px;">AngularJS 프로그래밍</div>
					</div>
					<div class="divMiddle" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
						<div class="divMiddleInner" style="width:260px;">ReactJS 프로그래밍</div>
					</div>
					<div class="divMiddle long" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
						<div class="divMiddleInner" style="width:260px;">Front-End JavaScript Framework</div>
					</div>
					<div class="divMiddle long" href="/Course/ShortCourse/DetailPage/Course_Nodejs.asp">
						<div class="divMiddleInner" style="width:260px;">객체지향 JavaScript와 Node.js 프로그래밍</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no5 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_SearchEngine.asp">
						<div class="divMiddleInner" style="width:240px;">맞춤형 검색엔진<!-- 과정--></div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_dataBaseModeling.asp">
						<div class="divMiddleInner" style="width:240px;">데이터베이스 모델링</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_dataBase.asp">
						<div class="divMiddleInner" style="width:240px;">데이터베이스 성능튜닝</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_springData.asp">
						<div class="divMiddleInner" style="width:240px;">Spring Data + noSQL</div>
					</div>
					<div class="divMiddle" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
						<div class="divMiddleInner" style="width:240px;">MySQL  최적화</div>
					</div>
					<div class="divMiddle long" href="/Course/ShortCourse/DetailPage/Course_sqlJdbc.asp">
						<div class="divMiddleInner" style="width:240px;">오라클과 데이터베이스 연동 프로그래밍</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no6 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_Agile4Developer.asp">
						<div class="divMiddleInner" style="width:240px;">Agile 소프트웨어 개발 실무</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_ArchitectureBasic.asp">
						<div class="divMiddleInner" style="width:240px;">소프트웨어 아키텍처 입문</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_ITIL.asp">
						<div class="divMiddleInner" style="width:240px;">ITILv3 기반 IT Service Management</div>
					</div>
					<div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no7 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_Android.asp">
						<div class="divMiddleInner" style="width:140px;">안드로이드 앱 개발</div>
					</div>
					<div class="divMiddle" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
						<div class="divMiddleInner" style="width:140px;">UX/UI 제작 실무</div>
					</div>
					<div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no8 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_javaPlan.asp">
						<div class="divMiddleInner" style="width:250px;">Java 설계과정</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_realUml.asp">
						<div class="divMiddleInner" style="width:250px;">UML 실전에서는 이것만 쓴다</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_uml.asp">
						<div class="divMiddleInner" style="width:250px;">실전! 분석과정</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_designPattern.asp">
						<div class="divMiddleInner" style="width:250px;">객체지향 개념과 디자인 패턴</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_codingTuning.asp">
						<div class="divMiddleInner" style="width:250px;">자바 성능향상을 위한 코딩습관과 튜닝</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no9 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle long" href="/Course/ShortCourse/DetailPage/Course_RaspberryPi.asp">
						<div class="divMiddleInner" style="width:240px;">오픈소스 라즈베리파이를 활용한 IoT 과정</div>
					</div>
					<div class="divMiddle long" href="/Course/ShortCourse/DetailPage/Course_StorageSystem_FMBased.asp">
						<div class="divMiddleInner" style="width:240px;">Flash Memory기반 Storage System</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div style="clar:both;"></div>
			</div>

			<!-- depth0 no2 : 고급과정 -->
			<div class="mainDropdownMenu depth0 no2" >
				<!--<img src="Images/Icons/MainPage_Menubar__triangle.png" style="position:relative; top:-13px; left:-40px;"/>-->
				<div class="mainDropdownMenu depth1 no2 fl" >
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle">
						<div class="divMiddleInner" style="width:160px;">[서울] 비트교육센터</div>
					</div>
					<div class="divMiddle">
						<div class="divMiddleInner" style="width:160px;">[대전] 대전캠퍼스</div>
					</div>
					<div class="divMiddle">
						<div class="divMiddleInner" style="width:160px;">[부산] 부산캠퍼스</div>
					</div>
					<div class="divMiddle">
						<div class="divMiddleInner" style="width:160px;">[군포] 군포캠퍼스</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no1 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">자바 Front-End 고급과정</div>
					</div>
					<div class="divMiddle" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">자바 Back-End 고급과정</div>
					</div>
					<div class="divMiddle" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">IoT 고급과정</div>
					</div>
					<div class="divMiddle" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">임베디드 시스템 고급과정</div>
					</div>
					<div class="divMiddle" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">윈도우 닷넷 고급과정</div>
					</div>
					<div class="divMiddle" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">빅데이터 사이언티스트 과정</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<!-- no2 : 대전캠퍼스(고급과정) -->
				<div class="mainDropdownMenu depth2 no2 fl">
					<div class="divTop1"></div>
					<div class="divTop2" ></div>
					<div class="divBlank"></div>
					<div class="divMiddle" href="/Course/localCampus/localCampus_Daejeon_introduction.asp">
						<div class="divMiddleInner" style="width:140px;">대전캠퍼스 소개</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Daejeon_windowNet.asp">
						<div class="divMiddleInner" style="width:140px;">윈도우 닷넷 고급과정</div>
					</div>
					<div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<!-- // no2 : 대전캠퍼스(고급과정) -->
				<!-- no3 : 부산캠퍼스(고급과정) -->
				<div class="mainDropdownMenu depth2 no3 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/localCampus/localCampus_Busan_introduction.asp">
						<div class="divMiddleInner" style="width:130px;">부산캠퍼스 소개</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Busan_javaHigh.asp">
						<div class="divMiddleInner" style="width:130px;">웹&amp;모바일 고급과정</div><!--자바고급과정???-->
					</div>
					<div class="divBottom"></div>
				</div>
				<!-- // no3 : 부산캠퍼스(고급과정) -->
				<!-- no4 : 군포캠퍼스(고급과정) -->
				<div class="mainDropdownMenu depth2 no4 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/localCampus/localCampus_Gunpo_introduction.asp">
						<div class="divMiddleInner" style="width:140px;">군포캠퍼스 소개</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Gunpo_windowNet.asp">
						<div class="divMiddleInner" style="width:140px;">윈도우 닷넷 고급과정</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<!-- // no4 : 군포캠퍼스(고급과정) -->
				<div style="clar:both;"></div>
			</div>
			
			<!-- depth0 no3 : 전문가과정 -->
			<div class="mainDropdownMenu depth0 no3" >
				<!--<img src="Images/Icons/MainPage_Menubar__triangle.png" style="position:relative; top:-13px; left:-50px;"/>-->
				<div class="mainDropdownMenu depth1 no3 fl" >
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle" href="/Course/Expert/Course_Expert_JavaExpert.asp">
						<div class="divMiddleInner" style="width:180px;">자바 전문가과정</div>
					</div>
					<div class="divMiddle" href="javascript:alert('준비중입니다. (문의 02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">윈도우 닷넷 전문가과정</div>
					</div>
					<div class="divMiddle" href="/Course/Expert/Course_Expert_Embedded.asp">
						<div class="divMiddleInner" style="width:180px;">임베디드 시스템 전문가과정</div>
					</div>
					<div class="divMiddle" href="javascript:alert('준비중입니다. (문의 02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">청년실업 해소펀드</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div style="clar:both;"></div>
			</div>
			
			<!-- depth0 no4 : 국비지원무료과정 -->
			<div class="mainDropdownMenu depth0 no4" >
				<!--<img src="Images/Icons/MainPage_Menubar__triangle.png" style="position:relative; top:-13px; left:-93px;"/>-->
				<div class="mainDropdownMenu depth1 no4 fl" >
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle"><!-- href="/Course/Kukka/Course_Kukka_2017.asp">-->
						<div class="divMiddleInner" style="width:170px;">국가기간전략산업직종</div>
					</div>
					<div class="divMiddle"><!-- href="/Course/Employ/Course_Employ.asp">-->
						<div class="divMiddleInner" style="width:170px;">신입사원 채용교육</div>
					</div>
					<!--
					<div class="divMiddle" href="/Course/Industry4.0/Course_Expert_BigDataSystem.asp">
						<div class="divMiddleInner" style="width:180px;">4차 산업혁명 선도인력양성</div>
					</div>
					-->
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no1 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<!--
					<div style="DISPLAY:NONE;" class="divMiddle  " href="/Course/Kukka/Course_Kukka_Projects2070929.asp">
						<div class="divMiddleInner" style="width:200px;">프로젝트 발표회</div>
					</div>
					-->
					<div class="divMiddle  " href="/Course/Kukka/Course_Kukka_Introduction.asp">
						<div class="divMiddleInner" style="width:200px;">국가기간전략산업직종훈련 소개</div>
					</div>
					<div class="divMiddle long twolines" href="/Course/Kukka/Course_Kukka_JavaBigData_2017.asp">
						<div class="divMiddleInner twolines" style="width:200px;">JAVA 기반 빅데이터 처리를 위한 <br/>분산정보시스템 개발자 양성과정</div>
					</div>
					<div class="divMiddle long twolines" href="/Course/Kukka/Course_Kukka_RaspberryPiIoTEmbedded_2017.asp">
						<div class="divMiddleInner twolines" style="width:200px; letter-spacing:-2px;">라즈베리파이를 활용한 IoT임베디드<br/>시스템 개발자 양성과정</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no2 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div>

					<div class="divMiddle" href="/Course/Employ/Course_Employ_Cafe24.asp">
						<div class="divMiddleInner" style="width:190px;">㈜카페24<span style="font-size:13px;">[모집중]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_BitComputer.asp">
						<div class="divMiddleInner" style="width:190px;">㈜비트컴퓨터 <span style="font-size:13px;">[모집중]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_AurosTech.asp">
						<div class="divMiddleInner" style="width:190px;">㈜오로스테크놀로지 <span style="font-size:13px;">[모집중]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_WhiteInfoComm.asp">
						<div class="divMiddleInner" style="width:190px;">㈜화이트정보통신 <span style="font-size:13px;">[모집중]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_PSK.asp">
						<div class="divMiddleInner" style="width:190px;">㈜피에스케이 <span style="font-size:13px;">[모집중]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_BizTechPartners.asp">
						<div class="divMiddleInner" style="width:190px;">㈜비즈테크파트너스 <span style="font-size:13px;">[모집중]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_TaehaMechatronics.asp">
						<div class="divMiddleInner" style="width:190px;">㈜테하메카트로닉스 <span style="font-size:13px;">[모집중]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_ivis.asp">
						<div class="divMiddleInner" style="width:190px;">㈜아이비스 <span style="font-size:13px;">[모집중]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_LEETECH.asp">
						<div class="divMiddleInner" style="width:190px;">㈜리텍 <span style="font-size:13px;">[모집중]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_voiceye.asp">
						<div class="divMiddleInner" style="width:190px;">㈜보이스아이 <span style="font-size:13px;">[모집중]</span></div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div style="clar:both;"></div>

				<div style="clar:both;"></div>
			</div>
			<!-- depth0 no5 : 초중고SW교육 -->
			<div class="mainDropdownMenu depth0 no5" >
				<!--<img src="Images/Icons/MainPage_Menubar__triangle.png" style="position:relative; top:-13px; left:-52px;"/>-->
				<div class="mainDropdownMenu depth1 no5 fl" >
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle long" href="/Course/ShortCourse/DetailPage/Course_RaspberryPi_Audio.asp">
						<div class="divMiddleInner" style="width:260px;">세상과 소통하는 라즈베리파이 오디오 만들기</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div style="clar:both;"></div>
			</div>
			
			<div style="clar:both;"></div>
			<!--//main dropdown menu -->
			