<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<!--#include virtual="/Member/id_pass_search_script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >

	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			//$(".snb .depth1").eq(4).addClass("on");
			$(".snb_1709 a.newdepth1").eq(4).addClass("on");
		});
	</script>
	<script type="text/javascript" src="http://openapi.map.naver.com/openapi/naverMap.naver?ver=2.0&key=19bd72fa3f35a576e9b39b1b7dbcb203"></script>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper">
	<form name="form_ipin" method="post" style="display:none">
		<input type="hidden" name="m" value="pubmain">  
		<input type="hidden" name="enc_data" value="<%= sRequestData %>">
	</form>
		<%
		'//<!-- SkipMenu -->
		'//<!-- #include virtual = "/Include/skipMenu.asp"-->
		'//<!-- //SkipMenu -->
		%>
		
		<!-- Header -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header -->
		
		<!-- Container_Wrap -->
		<div id="Container_Wrap" style="min-height:300px;">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CenterInfo_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Ȩ
						</p>
						<h4 style="float:left;">ã�ƿ��ô� ��</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
					
					<section class="section mar_t20">
						<div class="con_wrap1709">
							<div id="divMap" style="width:720px; height:600px;"></div>
							<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=f52a0f3b08cedb148b641c1036676142"></script>
							<script>
								var container = document.getElementById('divMap');
								var options = {
									center: new daum.maps.LatLng(37.4946008, 127.027694),
									level: 3
								};
								var map = new daum.maps.Map(container, options);
								
								// ��Ŀ�� ǥ�õ� ��ġ�Դϴ� 
								var markerPosition  = new daum.maps.LatLng(37.4946008, 127.027694); 

								// ��Ŀ�� �����մϴ�
								var marker = new daum.maps.Marker({
									position: markerPosition
								});

								// ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
								marker.setMap(map);
								
								var iwContent = '<div style="padding:5px;"><span style="font-size:15pt; font-weight:900;">��Ʈ��������</span> <a href="http://map.daum.net/link/map/��Ʈ��������,37.4946008,127.027694" style="color:blue; letter-spacing:-2px;" target="_blank">ū��������</a></div>', // ���������쿡 ǥ��� �������� HTML ���ڿ��̳� document element�� �����մϴ�
									iwPosition = new daum.maps.LatLng(37.4946008, 127.027694); //���������� ǥ�� ��ġ�Դϴ�

								// ���������츦 �����մϴ�
								var infowindow = new daum.maps.InfoWindow({
									position : iwPosition, 
									content : iwContent 
								});
								  
								// ��Ŀ ���� ���������츦 ǥ���մϴ�. �ι�° �Ķ������ marker�� �־����� ������ ���� ���� ǥ�õ˴ϴ�
								infowindow.open(map, marker); 
							</script>

							<!--
							<div id = "divMap" style="border:1px solid #000; width:850px; height:600px; margin:20px;"></div>
							<script type="text/javascript">
								var oPoint = new nhn.api.map.LatLng(37.4946008, 127.027694);  
								nhn.api.map.setDefaultPoint('LatLng');
								oMap = new nhn.api.map.Map('divMap' ,{
									point : oPoint,
									zoom : 12,
									enableWheelZoom : true,
									enableDragPan : true,
									enableDblClickZoom : false,
									mapMode : 0,  // 0 : �Ϲ����� , 1 : ��ħ����, 2: ��������
									activateTrafficMap : false,
									activateBicycleMap : false,
									minMaxLevel : [ 1, 14 ],
									size : new nhn.api.map.Size(850, 600)
								});

								var mapZoom = new nhn.api.map.ZoomControl(); // - �� ��Ʈ�� ����
								mapZoom.setPosition({left:30, bottom:30}); // - �� ��Ʈ�� ��ġ ����
								oMap.addControl(mapZoom); // - �� ��Ʈ�� �߰�.
								
								mapTypeChangeButton = new nhn.api.map.MapTypeBtn(); // - ���� Ÿ�� ��ư ����
								mapTypeChangeButton.setPosition({top:10, left:50}); // - ���� Ÿ�� ��ư ��ġ ����
								oMap.addControl(mapTypeChangeButton);
								
								// ��Ŀ ������(�Ⱥ��̴� ���·� �ʿ� �߰��� ����) 
								var oSize = new nhn.api.map.Size(28, 37);                
								var oOffset = new nhn.api.map.Size(14, 37);                
								var oIcon = new nhn.api.map.Icon('http://static.naver.com/maps2/icons/pin_spot2.png', oSize, oOffset);
								
								//var oLabel = new nhn.api.map.MarkerLabel(); // - ��Ŀ �� ����.
								//oMap.addOverlay(oLabel); // - ��Ŀ �� ������ �߰�. �⺻�� ���� ������ �ʴ� ���·� �߰���
								
								// ��Ŀ �����߰�    
								var oMarker = new nhn.api.map.Marker(oIcon, { title : '��Ʈ��������' });                        
								oMarker.setPoint(oMap.getCenter());                        
								oMap.addOverlay(oMarker); 
								
								oLabel = new nhn.api.map.MarkerLabel();
								oMap.addOverlay(oLabel);
								oLabel.setVisible(true, oMarker);

							</script>
							-->
						</div>

						<div class="con_wrap1709 mar_t20">
							<div class="divTable">
								<table>
									<caption>��Ʈ��������(����) �ּ�, ��ȭ, �ѽ�</caption>
									<colgroup>
										<col style="width:30%">
										<col style="width:70%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" colspan="2">��Ʈ��������(����)</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row">�� ��</td>
											<td>����Ư���� ���ʱ� ���ʴ��74��33 ��Ʈ�� 3��</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">�� ȭ</td>
											<td>02-3486-3456</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">�� ��</td>
											<td>02-3486-7890</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="con_wrap1709 mar_t20">
							<div class="divTable">
								<table>
									<caption>��Ʈ��ǻ�� �ּ�, ��ȭ, �ѽ�</caption>
									<colgroup>
										<col style="width:30%">
										<col style="width:70%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" colspan="2">��Ʈ��ǻ��</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row">�� ��</td>
											<td>����Ư���� ���ʱ� ���ʴ��74��33 ��Ʈ��</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">�� ȭ</td>
											<td>02-3486-1234</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">�� ��</td>
											<td>02-3486-5555</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="con_wrap1709 bg_none mar_t20">
							<div class="divTable">
								<table>
									<caption>������ȳ�</caption>
									<colgroup>
										<col style="width:30%">
										<col style="width:70%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" colspan="2">������ȳ�</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="col">��ö</td>
											<td>����ö 2ȣ��/�źд缱 ������ 5�� �ⱸ ���� 3��</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">����</td>
											<td>
												<ul class="ul_dot_gray">
													<li>���� - 3420, 4424, 5412</li>
													<li>���� - 140, 144, 145, 340, 363, 402, 420, 470, 471</li>
													<li>���� - 1550, 9100, 9200, 9300, 9400, 9404, 9408, 9409, 9410, 9411, 9412, 9503, 9700</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
					</section>
					<!--<a href="#this" class="moveTop">Top</a>-->
				</div>
				<!-- //Content -->
			</div>
			<!-- Content_Wrap -->
		</div>
		<!-- Container_Wrap -->

		<!-- Footer_Wrap -->
		<!-- #include virtual = "/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>

</html>