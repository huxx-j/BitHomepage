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
				<h3>���к�Ʈ[����ķ�۽�]</h3>
				<section class="section visual_wrap">
					<p class="sTit">25�� ������ ��� ����</p>
					<p class="bTit"><span class="green1">���ѹα� �ְ��� ����Ʈ���� �����η� �缺</span> ������� <span class="green1">��Ʈ��ī����</span></p>
					<p class="cntName">����ķ�۽�</p>
					<div class="txtCon">
						���￡ ���ż� ������ �޾ƾ� �ϴ� ������ ���� �����ϼ���?<br>
						�� �̻� ����Ʈ���� ���α׷��� ������ �ޱ� ���� �������<br>
						����� �ʿ䰡 ����ϴ�.<br>
						ü������ �����ý��۰�  �ְ��� �����ü���<br>
						<span class="green1">����ķ�۽��� OPEN</span> �߽��ϴ�.
					</div>
					<a href="/localCampus/Register/register.asp" title="�����ϱ�" class="support btn mid green1">�����ϱ�</a>
				</section>
				<section>
					<div class="tap_header">
						<ul class="tapMenu">
							<li><a href="#this" title="�������� �ε��" onClick="javascript:ajaxLoad('#ConDetail', '', '/localCampus/Content/Tab/loadMap.asp');">�������� �ε��</a></li>
							<li class="on"><a href="#this" title="�������ΰ���" onClick="javascript:ajaxLoad('#ConDetail', '', '/localCampus/Content/Tab/daejeon_courseInfo.asp');">�������ΰ���</a></li>
							<li><a href="#this" title="���ô±�" onClick="javascript:ajaxLoad('#ConDetail', '', '/localCampus/Content/Tab/daejeon_location.asp');">���ô±�</a></li>
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