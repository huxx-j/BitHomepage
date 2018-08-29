<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="/images/favicon.ico">
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			$(".snb_1709 a.newdepth1").eq(9).addClass("on");		// ����Ư�� - ��������� ����� ����� ���� (IoT)

			//$(".snb_1709 a.newdepth1").eq(0).addClass("on");
			//$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");
			//$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(3).addClass("on");  
			
			//$(".snb_1709 .newdepth2.newwrap.no2").addClass("on").removeClass("plus").addClass("minus");
			//$(".snb_1709 .newdepth3_wrap.no2").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			//$(".snb_1709 .newdepth3_wrap.no2 li:eq(0) a").addClass("on");
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<div id="Container_Wrap" style="min-height:initial;">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- # i n  clude virtual = "/Include/SNB_CourseYoung_1709.asp"-->
				<!-- #include virtual = "/Include/SNB_CourseVacation_1709.asp"-->				
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܿ����Ư��
						</p>
						<h4>��������� ����� ����� ����(IoT)</h4>
						<!--
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>���߰�SW����
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>����� �����ϴ� ��������� ����� ����� ����
						</p>
						<h4>����� �����ϴ� ��������� ����� ����� ����</h4>
						-->
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__RaspberryPi_Audio.inc" -->
												<!--
												2018.1.8 ~ 2018.1.12 <span class='greenTxt'>(������)</span><br/>
												2018.1.29 ~ 2018.2.2 <span class='greenTxt'>(���Ĺ�)</span><br/>
												2018.2.19 ~ 2018.2.23 <span class='greenTxt'>(���Ĺ�)</span>
												-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__RaspberryPi_Audio.inc" -->
												<!--
												������ 9:00 ~ 13:00 (4�ð�)<br/>
												���Ĺ� 14:00 ~ 18:00 (4�ð�)
												-->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>450,000��</td>
											<th>����������</th>
											<td>��뺸�� ��ȯ��</td>
										</tr>
										<tr>
											<th>��������</th>
											<td>20��</td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<!--
								-->
								<a href="/Register/Request/register_shortCourse.asp?cID=RaspberryPi_Audio" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>

						</div>
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
<!--
							<div class="myBlackBox" style="letter-spacing:-0.9pt;">
								<p>
								�ؿ� IT ���������� ���ۺ��� �Ҿ��� �ڵ� ���� ��ǳ�� �ֱ� ���������� �ұ� �����Ͽ� ������ �� ������ ����ǰ� �ִ�.<br/>
								����ȭ �ô뿡 ���� ������ �����ǰ� ����ȭ�� ��ó�� ������ �ô뿡�� ��ȸ�� �ʿ��� ���縦 �ڵ� �������� �����ؾ� �Ѵٴ� ������ �����븦 ��� �ִ� �߼��̸�,
								��� ������������ ����Ʈ���� �����ڿ� ���� ���䰡 �ð� ������ IT���迡���� �ڵ��� ��� ���̵��� ��� ��ȸ�� ���� ��������� ��ҵ� �ø� �� ���� ���̶�� �����ϰ� �ִ�.<br/>
								��ó�� �ֱٿ� �ڵ� ������ �ʿ伺�� �����Ǹ鼭 �ߡ�������� ���� ��հ� ���� ���� ���α׷����� �� ������ ���� Maker ������ �ڵ� ������ ������ �ڵ� ���� ���α׷��� ���� �ָ��� �ް� �ִ�.<br/>
								����Ʈ���� ������ �ϵ��� �����Ͽ� ��� ���߻� �ƴ϶� ���� ȿ���� ���̴� ������� ���� ���� ���α׷����� ������ ���� Ű�ų�, �ڵ����� �������� �����ϴ� �� ��, ��ǻ�� ȭ���� ���� �ڵ��� �ϴ� �ͺ��� �ڵ� ���� ȿ���� ���� �� �ִٴ� �򰡴�.<br/>
								�̿� �� ���������� ��������̸� ����Ͽ� ������ �������͸� ���� ����� �����ϴ� ���α׷��� ���� �����ϰ� ���ͳݿ� ������� �� ���� ��ǻ�Ϳ� �����ϴ� ���α׷��� ���ͳ� �������� ��Ƽ�̵�� ���α׷��� ��� ��ġ�� �۾��� ���� �ϰ� �Ѵ�.<br/>
								�׷����ν� �ϵ����� ����Ʈ��� �۵��ϴ� ����. ���ͳ��� �۵��ϴ� ���� �׸��� ���� Ű�� �ֺ� ��Ȳ�� �� ���α׷����� ��ȣ�� �ް� ó���ϴ� ��� �� �ڵ��� �⺻ �����Ӹ� �ƴ϶� ������ ��ȣ�� ó�� ���� ������ �� �ִ� �����̴�.
								</p>
							</div>
-->							
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>���� ���<!--���� �����ϸ� �������?--></h5>
							<ul class="ul_dot_gray">
								<li>��������̿� ���� �ִ� �ߡ�����л�</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;">
							<h5>���� ��ǥ<!--������ ��ǥ�� �ұ��?--></h5>
							<ul class="ul_dot_gray">
								<li>1. ��������̸� ���� ����Ʈ���� �ڵ� �ɷ��� ����Ѵ�.</li>
								<li>2. ����Ʈ���� ������ ���� ������ Ű��� ����ϴ� ���� ���� ����� ���� �����Ѵ�.</li>
								<li>3. �츮 �ֺ��� �پ��� ���ڱ����� ���� ��ĵ��� �����Ѵ�.</li>
								<li>4. �������� �ڹٽ�ũ��Ʈ ���α׷��� ���� ��������� ���α׷��� �����ϰ� �����ϸ鼭 ����Ʈ���� �ڵ��� ���� ���� ������ �����Ѵ�.</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;">
							<h5>���� ���<!--� ��� ����ϳ���?--></h5>
							<ul class="ul_dot_gray">
								<li>��������� ��ŸƮ ŰƮ, ����� ŰƮ, ������ ����, ����Ŀ</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5>���� ����<!--������ �����?--></h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:25%">
										<col style="width:55%">
										<col style="width:20%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">������</th>
											<th scope="col">������</th>
											<th scope="col">���ǿ���</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row">��������̿� ģ������</td>
											<td>
												1. ��������̶�?<br/>
												2. ��������� ���캸��<br/>
												3. ��������̷� �� �� �ִ� �͵� �Ұ�
											</td>
											<td class="c" rowspan="6">�̷� �� �ǽ�</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">��������� �����ϱ�</td>
											<td>
												1. �������� ����<br/>
												2. ��������̴� ��� ���α׷��� �ұ�? (Node.js ��ġ)<br/>
												3. ù ��° ���α׷� "Hello World" ȭ�鿡 ����ϱ�<br/>
												4. �������� ��������̿� �����ϱ�<br/>
												5. LED ���� �Ÿ���
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">�ڹٽ�ũ��Ʈ ��� ����</td>
											<td>
												1. ���α׷����̶�?<br/>
												2. ���α׷��� ����?<br/>
												3. LED �����̴� Node.js ���α׷� �ٽ� ���캸��<br/>
												4. ������?<br/>
												5. ������� �غ���<br/>
												6. ���α׷� ���� ���� ���� (if, for, while)<br/>
												7. �Լ���?<br/>
												8. ��� �ۼ��� ����<br/>
												9. ���ڿ�<br/>
												10. ��ȣ�� ��ȣ�� ����� ����
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">GPIO ���α׷���</td>
											<td>
												1. ���� �� ������ ����/���� ����<br/>
												2. LED �����Ÿ���<br/>
												3. ���� �︮��<br/>
												4. ������ �Է� �޾ƺ���<br/>
												5. ��ư���� LED ���� �Ѻ���<br/>
												6. ������ ���߿����ʹ� �����ΰ���?<br/>
												7. �µ�/���� �����ϱ�<br/>
												8. ������ �����ϱ�
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">�� ���α׷���</td>
											<td>
												1. ��������� �ȿ� ������ Ȩ������ �����<br/>
												2. ����Ʈ������ �� Ȩ�������� �����ϱ�<br/>
												3. �� Ȩ���������� LED ���� �ѱ�<br/>
												4. �� Ȩ���������� ���� ��� �غ���<br/>
												5. �� Ȩ���������� ���� �˻��غ���<br/>
												6. ������������� ���� �ٿ�ε� ���Ѻ���
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">����� �����</td>
											<td>
												1. ��������̿� ����, ����Ŀ, LED ���� ���α׷� �����ϱ�<br/>
												2. ������ ���� �����<br/>
												3. ��� ��ġ��
											</td>
										</tr>
										
									</tbody>
								</table>
							</div>
							<!--<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>-->
							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.1423 &nbsp;(email:egchung@bit.kr)</p>-->
							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
							<!-- �󰭾ȳ� ���� -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
							</div>
							<div style="clear:both;"></div>

						</div>
						<!-- con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=RaspberryPi_Audio" class="btn mid green1">�����ϱ�</a>
						</div>
						-->

						
					</section>
				</div>
				<!--<a href="#this" class="moveTop">Top</a>-->
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