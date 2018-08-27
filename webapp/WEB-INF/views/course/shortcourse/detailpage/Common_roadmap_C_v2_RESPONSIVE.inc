<%
' The problem is related to the scrollbar width: window.innerWidth will return the right value that is read by CSS media queries. Note that $(window).innerWidth() will return the wrong value.
%>

<!-- con_wrap -->
<div class="con_wrap" style="z-index:1;">
	<style>
		.myYellow {
			color:#FFFF00;
		}
		.myBlackBox {
			width:94%; 
			background-color:#404040; 
			margin:1%; 
			padding:2%; 
			color:white; 
			text-align:center; 
			font-size:14pt; 
			box-shadow:1px 4px 4px #7f7f7f;
		}
		.myBlueBox {
			background-color:#094472;
			margin:0;
			padding:2%;
			color:white;
			text-align:left;
			font-size:11pt;
		}
	</style>
	<style>
		/* MOBILE */
		@media screen and (max-width:767px) {
			#roadmapDesktop .roadmapBox { min-width:20.75%; width:20.75%;  } /* 230px */
			#roadmapDesktop .roadmapArrow { width:5%; }
			#roadmapDesktop .divHeight { height:0.5rem; }
		}
		/* TABLET */
		@media screen and (min-width:768px) and (max-width:1390px) {
			#roadmapDesktop .roadmapBox { min-width:20%; width:20.75%;  } /* 230px */
			#roadmapDesktop .roadmapArrow { width:5%; }
			#roadmapDesktop .divHeight { height:0.3rem; }
		}
		/* DESKTOP */
		@media screen and (min-width:1391px) {
			#roadmapDesktop .roadmapHeader { width:224px; }
			#roadmapDesktop .roadmapContent { width:224px; }
			#roadmapDesktop .roadmapBox { width:230px;  }
			#roadmapDesktop .roadmapArrow { width:55px; }
			#roadmapDesktop .divHeight { height:0.25rem; }
			#btnMenu { display:none; }
		}
		/* PRINT */
		@media print {
			#roadmapDesktop .roadmapBox { min-width:20%; width:20.75%;  } /* 230px */
			#roadmapDesktop .roadmapArrow { width:5%; }
			#roadmapDesktop .divHeight { height:0.3rem; }
			.hGroup a.btn  { display:none !important; } /* 지원하기btn */
			#btnMenu { display:none; }
		}
		
		#roadmapDesktop .roadmapHeader {
			background-color:#dbe5f1;
			height:50px;
			width:100%;
			border:1px solid #373737;
			text-align:center;
			font-size:0.75rem;
			line-height:0.9rem;
			font-weight:900;
			text-shadow:1px 1px 1px #737373;
		}
		#roadmapDesktop .roadmapHeader.thispage {
			background-color:#ffcccc;
		}
		#roadmapDesktop .roadmapContent {
			min-height:178px;
			width:100%;
			border:1px solid #373737;
			font-weight:700;
			line-height:18px;
		}
		#roadmapDesktop .roadmapBox {
			float:left; 
			min-height:228px; 
			cursor:pointer;
			box-shadow:1px 1px 3px #373737;
		}
		#roadmapDesktop .roadmapArrow {
			float:left; 
			margin-top:0px;
			margin-left:2px;
		}
	</style>
	<style>
		#roadmapMobile .roadmapHeader {
			background-color:#dbe5f1;
			line-height:50px;
			min-height:50px;
			width:100%;
			border:1px solid #373737;
			text-align:center;
			font-size:26px;
			font-weight:900;
			text-shadow:1px 1px 1px #737373;
		}
		#roadmapMobile .roadmapHeader.thispage {
			background-color:#ffcccc;
		}
		#roadmapMobile .roadmapContent {
			width:100%;
			height:100%;
			border:1px solid #373737;
			font-weight:500;
			font-size:1rem;
			line-height:1.3rem;
		}
		#roadmapMobile .roadmapBox {
			margin-left:5px;
			cursor:pointer;
			box-shadow:1px 1px 3px #373737;
		}
		#roadmapMobile .roadmapArrow {
			margin-top:0px;
			margin-left:2px;
		}

		/* MOBILE the smallest fontsize */
		@media screen and (max-width:480px) {
			#roadmapMobile .roadmapContent { font-size:14px; line-height:17px; }
			#roadmapMobile .roadmapHeader { font-size:20px; line-height:50px; }
			.myBlackBox { font-size: 12pt !important; }
		}
		

	</style>
	<style>
		@media screen and (max-width:767px) {
			#roadmapDesktop { display:none; }
			#roadmapMobile { display:block; width:100%; }
		}
		@media screen and (min-width:768px) {
			#roadmapDesktop { display:block; width:100%; }
			#roadmapMobile { display:none; }
		}
		@media print {
			#roadmapDesktop { display:block; width:100%; }
			#roadmapMobile { display:none; }
		}
		
	</style>
	<%
		Str1 = "C언어를 시작으로 C++, Java, C# 객체지향 언어가 탄생하여, <span style='color:red;'>C언어는 프로그래밍 언어 중 가장 기본이 되는 언어</span>입니다. <span style='color:red;'>C언어만 제대로 이해하면 다른 언어도 쉽게 이해</span>하실 수 있게 됩니다. <br/>" &_
					"하드웨어를 제어하기 위한 Embedded 프로그램도 C기반이며, 최근 딥러닝, 머신러닝 등 최신 IT 분야에서도 C언어가 적용되어 그 중요성이 나날이 강조되고 있습니다."
		Str2 = "<span style='color:red;'>사고방식은 곧 프로그래밍의 능력</span>입니다. <br/> 자료구조에 대한 지식이 있는 사람이 효율적으로 문제를 해결할 수 있습니다."
		Str3 = "<span style='color:red;'>실제적인 SW 문제해결을 할 수 있는 능력을 키우는 것이 목적</span>이며, 실적문제를 기본적인 개념과 함께 풀어봄으로써 각종 알고리즘 경진대회 및 승진시험에 대비할 수 있습니다."
		Str4 = "<span style='color:red;'>중급 알고리즘 과정보다 좀 더 실무에서 사용되는 고급 알고리즘 문제해결을 할 수 있는 능력</span>을 키우고, 다양한 상황을 인위적으로 만들어 훈련시키고, 잘 정제된 추상적인 문제를 제시하고 해결해가면서 문제 해결 능력을 향상시킬 수 있습니다."
	%>
	<h5>과정 로드맵</h5>
	<div id="roadmapMobile">
		<div class="roadmapBox" h_ref="/Course/ShortCourse/DetailPage/Course_c.asp">
			<div class="roadmapHeader<% IF roadmapPageNum=1 THEN %> thispage<% END IF %>" ><span style="font-size:3rem;">C</span> Programming</div>
			<div class="roadmapContent">
				<div style="padding:5px;">
					<%= Str1 %>
				</div>
			</div>
		</div>
		<div style="text-align:center;"><img src="/images/common/icn_ArrowDown_210x210.png" class="roadmapArrow" style="width:5rem;"/></div>
		<div class="roadmapBox" h_ref="/Course/ShortCourse/DetailPage/Course_c2.asp">
			<div class="roadmapHeader<% IF roadmapPageNum=2 THEN %> thispage<% END IF %>">자료구조 및 초급 알고리즘</div>
			<div class="roadmapContent">
				<div style="padding:5px;">
					<%= Str2 %>
				</div>
			</div>
		</div>
		<div style="text-align:center;"><img src="/images/common/icn_ArrowDown_210x210.png" class="roadmapArrow" style="width:5rem;"/></div>
		<div class="roadmapBox" h_ref="/Course/ShortCourse/DetailPage/Course_AlgorithmIntermediate.asp">
			<div class="roadmapHeader<% IF roadmapPageNum=3 THEN %> thispage<% END IF %>">문제해결을 위한 중급 알고리즘</div>
			<div class="roadmapContent">
				<div style="padding:5px;">
					<%= Str3 %>
				</div>
			</div>
		</div>
		<div style="text-align:center;"><img src="/images/common/icn_ArrowDown_210x210.png" class="roadmapArrow" style="width:5rem;"/></div>
		<div class="roadmapBox" h_ref="/Course/ShortCourse/DetailPage/Course_AlgorithmAdvanced.asp">
			<div class="roadmapHeader<% IF roadmapPageNum=4 THEN %> thispage<% END IF %>">문제해결을 위한 고급 알고리즘</div>
			<div class="roadmapContent">
				<div style="padding:5px;">
					<%= Str4 %>
				</div>
			</div>
		</div>
		<div style="clear:both;"></div>
	</div>
	<div id="roadmapDesktop">
		<div class="roadmapBox" style="margin-left:5px;" h_ref="/Course/ShortCourse/DetailPage/Course_c.asp">
			<div class="roadmapHeader<% IF roadmapPageNum=1 THEN %> thispage<% END IF %>" style="font-size:0.6rem; line-height:0.6rem;"><div class="divHeight"></div><span style="font-size:1.3rem;">C</span><br/> Programming</div>
			<div class="roadmapContent">
				<div style="padding:2px;">
					<%= Str1 %>
				</div>
			</div>
		</div>
		<img src="/images/common/icn_ArrowRight_420x420.png" class="roadmapArrow" />
		<div class="roadmapBox" h_ref="/Course/ShortCourse/DetailPage/Course_c2.asp">
			<div class="roadmapHeader<% IF roadmapPageNum=2 THEN %> thispage<% END IF %>">자료구조 및 <br/>초급 알고리즘</div>
			<div class="roadmapContent">
				<div style="padding:2px;">
					<%= Str2 %>
				</div>
			</div>
		</div>
		<img src="/images/common/icn_ArrowRight_420x420.png" class="roadmapArrow" />
		<div class="roadmapBox" h_ref="/Course/ShortCourse/DetailPage/Course_AlgorithmIntermediate.asp">
			<div class="roadmapHeader<% IF roadmapPageNum=3 THEN %> thispage<% END IF %>">문제해결을 위한 <br/>중급 알고리즘</div>
			<div class="roadmapContent">
				<div style="padding:2px;">
					<%= Str3 %>
				</div>
			</div>
		</div>
		<img src="/images/common/icn_ArrowRight_420x420.png" class="roadmapArrow"/>
		<div class="roadmapBox" h_ref="/Course/ShortCourse/DetailPage/Course_AlgorithmAdvanced.asp">
			<div class="roadmapHeader<% IF roadmapPageNum=4 THEN %> thispage<% END IF %>">문제해결을 위한 <br/>고급 알고리즘</div>
			<div class="roadmapContent">
				<div style="padding:2px;">
					<%= Str4 %>
				</div>
			</div>
		</div>
		<div style="clear:both;"></div>
	</div>
</div>
<!-- //con_wrap -->

