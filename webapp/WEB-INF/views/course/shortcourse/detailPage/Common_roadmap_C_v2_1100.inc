<!-- con_wrap -->
<div class="con_wrap" style="z-index:1;">
	<h5>과정 로드맵</h5>
	<style>
		.roadmapHeader {
			background-color:#dbe5f1;
			height:50px;
			width:224px;
			padding:2px;
			border:1px solid #373737;
			text-align:center;
			line-height:25px;
			font-weight:900;
			font-size:16pt;
			text-shadow:1px 1px 1px #737373;
		}
		.roadmapHeader.thispage {
			background-color:#ffcccc;
		}
		.roadmapContent {
			height:178px;
			width:224px;
			padding:2px;
			border:1px solid #373737;
			font-weight:700;
			line-height:18px;
		}
		.roadmapBox {
			float:left; 
			width:230px; 
			height:240px; 
			cursor:pointer;
			box-shadow:1px 1px 3px #373737;
		}
		.roadmapBox.thispage {
			opacity:1.0 !important;
		}
		.roadmapArrow {
			float:left; 
			width:55px;
			margin-top:0px;
			margin-left:2px;
		}
	</style>
	<div class="roadmapBox<% IF roadmapPageNum=1 THEN %> thispage<% END IF %>" style="margin-left:5px;" h_ref="/Course/ShortCourse/DetailPage/Course_c.asp">
		<div class="roadmapHeader<% IF roadmapPageNum=1 THEN %> thispage<% END IF %>" style="line-height:50px;"><span style="font-size:1.35em;">C</span> Programming</div>
		<div class="roadmapContent">
			C언어를 시작으로 C++, Java, C# 객체지향 언어가 탄생하여, <span style="color:red;">C언어는 프로그래밍 언어 중 가장 기본이 되는 언어</span>입니다. <span style="color:red;">C언어만 제대로 이해하면 다른 언어도 쉽게 이해</span>하실 수 있게 됩니다. <br/>
			하드웨어를 제어하기 위한 Embedded 프로그램도 C기반이며, 최근 딥러닝, 머신러닝 등 최신 IT 분야에서도 C언어가 적용되어 그 중요성이 나날이 강조되고 있습니다.
		</div>
	</div>
	<img src="/images/common/icn_ArrowRight_420x420.png" class="roadmapArrow" />
	<div class="roadmapBox<% IF roadmapPageNum=2 THEN %> thispage<% END IF %>" h_ref="/Course/ShortCourse/DetailPage/Course_c2.asp">
		<div class="roadmapHeader<% IF roadmapPageNum=2 THEN %> thispage<% END IF %>">자료구조 및 <br/>초급 알고리즘</div>
		<div class="roadmapContent">
			<span style="color:red;">사고방식은 곧 프로그래밍의 능력</span>입니다. <br/>
			자료구조에 대한 지식이 있는 사람이 효율적으로 문제를 해결할 수 있습니다.
		</div>
	</div>
	<img src="/images/common/icn_ArrowRight_420x420.png" class="roadmapArrow" />
	<div class="roadmapBox<% IF roadmapPageNum=3 THEN %> thispage<% END IF %>" h_ref="/Course/ShortCourse/DetailPage/Course_AlgorithmIntermediate.asp">
		<div class="roadmapHeader<% IF roadmapPageNum=3 THEN %> thispage<% END IF %>">문제해결을 위한 <br/>중급 알고리즘</div>
		<div class="roadmapContent">
			<span style="color:red;">실제적인 SW 문제해결을 할 수 있는 능력을 키우는 것이 목적</span>이며, 실전문제를 기본적인 개념과 함께 풀어봄으로써 각종 알고리즘 경진대회 및 승진시험에 대비할 수 있습니다.
		</div>
	</div>
	<img src="/images/common/icn_ArrowRight_420x420.png" class="roadmapArrow"/>
	<div class="roadmapBox<% IF roadmapPageNum=4 THEN %> thispage<% END IF %>" h_ref="/Course/ShortCourse/DetailPage/Course_AlgorithmAdvanced.asp">
		<div class="roadmapHeader<% IF roadmapPageNum=4 THEN %> thispage<% END IF %>">문제해결을 위한 <br/>고급 알고리즘</div>
		<div class="roadmapContent">
			<span style="color:red;">중급 알고리즘 과정보다 좀 더 실무에서 사용되는 고급 알고리즘 문제해결을 할 수 있는 능력</span>을 키우고, 다양한 상황을 인위적으로 만들어 훈련시키고, 잘 정제된 추상적인 문제를 제시하고 해결해가면서 문제 해결 능력을 향상시킬 수 있습니다.
		</div>
	</div>
	<div style="clear:both;"></div>
</div>
<!-- //con_wrap -->

