<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<!--<meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0">-->
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<!-- CSS  -->
<!-- #include virtual = "/localCampus/Include/contentStyle.asp" -->
<!-- Script -->
<!-- #include virtual = "/localCampus/Include/Script.asp" -->
<script type="text/javascript">
	$(function(){
		ajaxLoad('#ConDetail', '', '/localCampus/Content/Tab/daejeon_courseInfo.asp');
	})
</script>
<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper">
		<!-- SkipMenu -->
		<!-- #include virtual = "/localCampus/Include/skipMenu.asp"-->
		<!-- //SkipMenu -->

		<!-- Header_Wrap -->
		<!-- #include virtual = "/localCampus/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<div id="Container">
			<div id="Content" class="sub no3">
				<h3>대학비트[대전캠퍼스]</h3>
				<section class="section visual_wrap">
					<p class="sTit">25년 역사의 명실 공히</p>
					<p class="bTit"><span class="green1">대한민국 최고의 소프트웨어 전문인력 양성</span> 교육기관 <span class="green1">비트아카데미</span></p>
					<p class="cntName">대전캠퍼스</p>
					<div class="txtCon">
						서울에 오셔서 교육을 받아야 하는 현실이 많이 불편하셨죠?<br>
						더 이상 소프트웨어 프로그래밍 교육을 받기 위해 서울까지<br>
						상경할 필요가 없답니다.<br>
						체계적인 교육시스템과  최고의 교육시설로<br>
						<span class="green1">대전캠퍼스를 OPEN</span> 했습니다.
					</div>
					<a href="/localCampus/Register/register.asp" title="지원하기" class="support btn mid green1">지원하기</a>
				</section>
				<section>
					<div class="tap_header">
						<ul class="tapMenu">
							<li><a href="#this" title="교육과정 로드맵" onClick="javascript:ajaxLoad('#ConDetail', '', '/localCampus/Content/Tab/loadMap.asp');">교육과정 로드맵</a></li>
							<li class="on"><a href="#this" title="모집중인과정" onClick="javascript:ajaxLoad('#ConDetail', '', '/localCampus/Content/Tab/daejeon_courseInfo.asp');">모집중인과정</a></li>
							<li><a href="#this" title="오시는길" onClick="javascript:ajaxLoad('#ConDetail', '', '/localCampus/Content/Tab/daejeon_location.asp');">오시는길</a></li>
						</ul>
					</div>
					<div id="ConDetail" class="tap_content courseInfo">
						
					</div>
				</section>
			</div>
		</div>
		<!-- Footer_Wrap -->
		<!-- #include virtual = "/localCampus/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>