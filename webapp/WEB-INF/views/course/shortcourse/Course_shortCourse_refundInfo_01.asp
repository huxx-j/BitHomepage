<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");
			
			//document.body.scrollTop = document.body.scrollHeight;
			var height = document.body.scrollHeight;
			$( 'html, body' ).stop().animate( { scrollTop : height } );
		});
	</script>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:450px;">
			<div id="Content_Wrap" style="min-height:450px;">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_RefundInfo_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Ȩ
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>��뺸��ȯ�޾ȳ�
						</p>
						<h4 style="float:left;">ȯ�޾ȳ� - �ٷ��� �����ɷ����</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
					
					<section class="section">
						<div>
							<!-- con_wrap -->
							<div class="con_wrap1709 mar_t30 " style="margin-left:66px;">
								<div class="refundList_wrap" style="WIDTH:654px;">
									<div class="refundCon">
										<h4 style="margin-left:3px; margin-top:55px; letter-spacing:-0.5px;"><a href="/Course/shortCourse/Course_shortCourse_refundInfo_01.asp">�ٷ��� �����ɷ���� <br> ������ 80% <br> �������� 100%</a></h4>
										<p class="conTxt" style="margin-top:67px;"><a href="/Course/shortCourse/Course_shortCourse_refundInfo_01.asp">�켱���� ����� �ٷ���<br>��뺸�� ���ǰ��� �ڿ�����<br>�Ⱓ�� �ٷ���, �ܽð� �ٷ���<br>�İ߱ٷ���, �Ͽ�ٷ���</a></p>
										<a href="/Course/shortCourse/Course_shortCourse_refundInfo_01.asp" class="btnBlueBorder big mar_t10">�󼼺���</a>
									</div>
									<div class="refundCon last">
										<h4 style="margin-top:65px;"><a href="/Course/shortCourse/Course_shortCourse_refundInfo_03.asp">����� ��Ź�Ʒ�<br>�ִ� 100% ����</a></h4>
										<p class="conTxt" style="margin-top:75px;"><a href="/Course/shortCourse/Course_shortCourse_refundInfo_03.asp">����ְ� �Ʒú���� �δ��ϸ� ����<br>�ٷ��� ���� ������� ���� �Ʒ���<br>�ǽ��ϴ� ��� ���뵿�ο���<br>�Ʒú� ����</a></p>
										<a href="/Course/shortCourse/Course_shortCourse_refundInfo_03.asp" class="btnBlueBorder big mar_t10">�󼼺���</a>
									</div>
								</div>
							</div>
							<!-- //con_wrap -->
						</div>
					</section>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>�ٷ��� �����ɷ���� �������̶�?</h5>
							<!--<p>��뺸�迡 �������� ����忡 �ٹ��ϰ� �ִ� �����ڱٷ��ڰ� �ں�� ������ �̼��� ���, ����������� ���� �������� �Ϻ�(80~100%)�� ȯ�� ���� �� �ִ� �����Դϴ�. ������ȯ���� �뵿�ο��� �������� �� �Ѵ޹� �Ŀ� �ش� ���������� ���޵˴ϴ�. </p>-->
							<p>
								��뺸���� �����ϰ� �ִ� ����忡 �ٹ��ϰ� �ִ� �������ڰ� ��뼾�͸� ���� �������� ���Ϲ��ī�塯�� �߱޹޾�, ������ �����޾� ������ ������ �� �ִ� �����Դϴ�. (�ִ�100%) <br/>
								�������� ���� ���¿� ����, �ں� �δ�� �ݾ��� �޶����� �ں�δ�ݸ� �����Ͻø� �ٷ��������ɷ����������� ���� ������ �����մϴ�.
							</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<!--<p class="redTxt fb mar_b5">�� ������ ȯ�޴���� ���ΰ� �ñ��Ͻ� �е��� ��Ʈ��������(02-3486-3456)���� �������ֽø� �ٷ� Ȯ���ص帳�ϴ�.</p>-->
							<p class="redTxt fb mar_b5">�� ������ ȯ�޴���� ���ΰ� �ñ��Ͻ� �е��� ��Ʈ��������(02-3486-3456)���� �������ֽø� �ٷ� Ȯ���ص帳�ϴ�.</p>
							<!--
							<dl>
								<dt>�켱���� ����� �ٷ���</dt>
								<dd>��뺸������� ����� ��������� �� �����ɷ°��߻���� �ǽÿ� �־ �켱������ ����Ͽ� �����ϴ� ���(�ٷκ������ܿ��� ����) �Ǽ���,����,���,â��,��ž� ���� 300������, �������� 500�� ����, ��Ÿ����� 100�� ������ ��쿡 �ش�.</dd>
							</dl>
							<dl>
								<dt>��뺸�� ���ǰ��� �ڿ����� </dt>
								<dd>
									<ul class="ul_dot_gray">
										<li>12.01.22�� ���� ������ �ڿ����ڴ� �����ϼ��� ������� �Ʒð��� ���� ����</li>
										<li>12.01.22�� ���� ������ �ڿ����ڴ� ��뺸�� �����ϼ��� 180�� �̻��� ��</li>
									</ul>
								</dd>
							</dl>
							<dl>
								<dt>�Ⱓ�� �ٷ��� (�Ⱓ�� �� �ܽð� �ٷ��� ��ȣ � ���� ���� ��2�� ��1ȣ) </dt>
								<dd>�Ⱓ�� ������ �ִ� �ٷΰ���� ü���� ��</dd>
							</dl>
							<dl>
								<dt>�ܽð� �ٷ��� (�ٷα��ع� ��2�� ��1�� ��8ȣ) </dt>
								<dd>�ֵ� ���ڸ����� 1�ֵ��� ���� �ٷνð��� 36�ð� �̸��� �ٷ���</dd>
							</dl>
							<dl>
								<dt>�İ߱ٷ��� </dt>
								<dd>�İ߱ٷ��� ��ȣ� ���� ������ ���� �İ߱ٷ���</dd>
							</dl>
							<dl>
								<dt>�Ͽ�ٷ��� </dt>
								<dd>1���� �̸� ���� �ٷ��ڷ� ���¹߱� ��û�� ���� 90�� �̳��� 10�� �̻��� �ٷγ����� �ִ� �ٷ���</dd>
								<dd>[�������� �ٷ��ڴ� �������� ��ȣ���� ���Ͽ� 2�� �̻� ���� ����忡 �ٹ��ϴ� �ڴ� ������� �ش���� ����]</dd>
							</dl>
							-->
							<ul class="ul_dot_gray">
								<li>�켱���� ����� �ٷ��ڰ�뺸������� ����� ��������� �� �����ɷ°��߻���� �ǽÿ� �־ �켱������ ����Ͽ� �����ϴ� ���(�ٷκ������ܿ��� ����) �Ǽ���,����,���,â��,��ž� ���� 300������, �������� 500�� ����, ��Ÿ����� 100�� ������ ��쿡 �ش�.��뺸�� ���ǰ��� �ڿ����� 12.01.22�� ���� ������ �ڿ����ڴ� �����ϼ��� ������� �Ʒð��� ���� ����</li>
								<li>12.01.22�� ���� ������ �ڿ����ڴ� ��뺸�� �����ϼ��� 180�� �̻��� ��</li>
								<li>�Ⱓ�� �ٷ��� (�Ⱓ�� �� �ܽð� �ٷ��� ��ȣ � ���� ���� ��2�� ��1ȣ) �Ⱓ�� ������ �ִ� �ٷΰ���� ü���� �ڴܽð� �ٷ��� (�ٷα��ع� ��2�� ��1�� ��8ȣ) �ֵ� ���ڸ����� 1�ֵ��� ���� �ٷνð��� 36�ð� �̸��� �ٷ����İ߱ٷ��� �İ߱ٷ��� ��ȣ� ���� ������ ���� �İ߱ٷ����Ͽ�ٷ��� 1���� �̸� ���� �ٷ��ڷ� ���¹߱� ��û�� ���� 90�� �̳��� 10�� �̻��� �ٷγ����� �ִ� �ٷ���[�������� �ٷ��ڴ� �������� ��ȣ���� ���Ͽ� 2�� �̻� ���� ����忡 �ٹ��ϴ� �ڴ� ������� �ش���� ����]</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<!--<p>�����ѵ��ݾ� : 1�δ� ���� 100���� �ѵ� ������ �Ʒð����� ���� 50 ~ 100% ����</p>-->
							<p>�����ѵ��ݾ� : 1�δ� ���� 200���� �ѵ� ������ �Ʒð����� ���� 50 ~ 100% ����</p>
							
							<!--<p class="mar_b10">�� ��, ������ ���Ϲ��ī�忡 ���� �����ݰ� �ٷ��� �����ɷ���� �����ݿ� ���� �������� �ջ��Ͽ� ���� 100����, 5�Ⱓ 300���� �ѵ������� ���� </p>-->
							<p class="mar_b10">�� ��, ������ ���Ϲ��ī�忡 ���� �����ݰ� �ٷ��� �����ɷ���� �����ݿ� ���� �������� �ջ��Ͽ� ���� 200����, 5�Ⱓ 300���� �ѵ������� ���� </p>
							<dl>
								<!--<dt>��Ʈ�������� �Ʒñ��� : �Ϲݰ��� - �������� 80%</dt>-->
								<!--<dt>��Ʈ�������� �Ʒñ��� : �Ϲݰ��� - �������� 80%�Ʒú�� ���شܰ��� ���Ͽ� ���� �ݾ��� 80% �ѵ�</dt>-->
								<dd>
									<!--
									<ul class="ul_dot_gray">
										<li>�Ʒú�� ���شܰ��� ���Ͽ� ���� �ݾ��� 80% �ѵ�</li>
										<li>�������� �ٷ��ڴ� �ѵ� ���� ����</li>
										<li>(�� �������� : �Ⱓ���ٷ���, �ܽð��ٷ���, �İ߱ٷ���, �Ͽ�ٷ���)</li>
									</ul>
									-->
									<ul class="ul_dot_gray">
										<li>�������� �ٷ��ڴ� �ѵ� ���� ����</li>
										<li>(�� �������� : �Ⱓ���ٷ���, �ܽð��ٷ���, �İ߱ٷ���, �Ͽ�ٷ���)<br/>[�������� �ٷ��ڴ� �������� ��ȣ���� ���Ͽ� 2�� �̻� ���� ����忡 �ٹ��ϴ� �ڴ� ������� �ش���� ����]</li>
									</ul>
								</dd>
								<!--<dd>[�������� �ٷ��ڴ� �������� ��ȣ���� ���Ͽ� 2�� �̻� ���� ����忡 �ٹ��ϴ� �ڴ� ������� �ش���� ����]</dd>-->
							</dl>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>�ٷ��� �����ɷ�����Ʒ� �ں�δ��</h5>
							<div class="divTable">
								<table>
									<caption>Sw�����ٿ�ó���� �ں�δ��</caption>
									<colgroup>
										<col style="width:15%">
										<col style="width:15%">
										<col style="width:20%">
										<col style="width:15%">
										<col style="width:15%">
										<col style="width:20%">
									</colgroup>
									<thead>
										<tr>
											<th scope="row" colspan="2">����</th>
											<th scope="row">�ں�δ��</th>
											<th scope="row" colspan="2">����</th>
											<th scope="row">�ں�δ��</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td colspan="2" class="darker c">��뺸�谡�� �ڿ�����</td>
											<td class="c">0%</td>
											<td rowspan="5" class="darker c">�߰� <br/>�Ǵ� <br/>����</td>
											<td class="darker c">��������</td>
											<td class="c">0%</td>
										</tr>
										<tr>
											<td rowspan="4" class="darker c">�켱����<br/>�����</td>
											<td class="darker c">������</td>
											<td class="c">20%</td>
											<td class="darker c">����������</td>
											<td class="c">20%</td>
										</tr>
										<tr>
											<td class="darker c">��������</td>
											<td class="c">0%</td>
											<td class="darker c">���� ������</td>
											<td class="c">0%</td>
										</tr>
										<tr>
											<td class="darker c">����������</td>
											<td class="c">0%</td>
											<td class="darker c">50���̻� ������</td>
											<td class="c">20%</td>
										</tr>
										<tr>
											<td class="darker c">���� ������</td>
											<td class="c">0%</td>
											<td class="darker c">3�Ⱓ ��������</td>
											<td class="c">20%</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->
						
						
						
						<!-- con_wrap -->
						<div class="con_wrap1709 last">
							<h5>�Ʒ����� �� ȯ�޾ȳ�</h5>
							<dl class="last">
								<dd>
									1. ������ ���Ϲ��ī�� �߱޽�û�� �մϴ�. (�������� 2�������� �߱޽�û ����)<br/>
								  <span style="margin-left:13px;">�¶���- www.hrd.go.kr </span><br/>
								  <span style="margin-left:13px;">��������- ���Ұ�뼾��</span><br/>
								</dd>
								<dd>
									2. ������û�� '�ٷ����������'���� ������ �ۼ� �� ���Ͻô� �������� ��û�մϴ�.<br/>
									<span style="margin-left:13px;">��û�� �����ǰ� : <a href="mailto:bithrd@bit.kr" class="email">bithrd@bit.kr</a></span>
								</dd>
								<dd>
									3. �������� ��Ʋ ������ �ٷ���������� ���� ��û���� ������ �����մϴ�. <br/>
									<span style="margin-left:13px;">�� ������� �ں�δ������ �����ϼž��մϴ�. (���θ���ī�� or ���θ��� ������ü �� ���� ����)</span>
								</dd>
								<dd>
									4. �������� �������� �����⼮�ϼ��� �����ϼ��� 80% �̸��� ��� �Ʒ��� ���� ����˴ϴ�.<br/>
									<span style="margin-left:13px;">1ȸ �̼��� �� - �ѵ� 20���� ����</span><br/>
									<span style="margin-left:13px;">2ȸ �̼��� �� - �ѵ� 30���� ����</span><br/>
									<span style="margin-left:13px;">3ȸ �̼��� �� - �������� �� 1�� ī��߱����� </span><br/>
								</dd>
								<dd>
									<br/><span class="blueTxt">* ������û �� ���� �ֽø� ȯ�޿� ���� ���ϰ� �ȳ��ص帳�ϴ�.</span>
								</dd>
							</dl>
							
							<!--
							<h5>�Ʒ����� �� ȯ�޾ȳ�</h5>
							<p>������û�� '������ȯ��'���� ������ �ۼ� �� �ں�� ������ �����մϴ�.</p>
							<p>�н����� �� �Ʒú� ��û�� ���� �ٷ��� ���������� ���� ��û���� ��Ʈ�������Ϳ� �����մϴ�. (e-mail : kimyj0723@bit.kr)</p>
							<p class="redTxt fb">��, �����Ʒð����� �⼮���� 80%�̻��� ��쿡�� ȯ�ް��� </p>
							<ul>
								<li>1. ���� �������� �Ʒ������� (��Ʈ�������� ��� - ���� �� ����) </li>
								<li>2. ��������÷��(ī�� ������ �Ǵ� ���ݿ����� �Ǵ� �Աݳ��� ǥ�õ� ����纻 �Ǵ� ���ͳݹ�ŷ ��ȸ���� �Աݳ��� ���)</li>
								<li>3. ȯ�޹����� ����纻 (���θ���)</li>
								<li>4. ���ٷ����� ��� �ٷΰ�༭ �纻���� / �İ߱ٷ����� ��� �İ߱ٷΰ�༭ �纻����<br>�Ʒ��̷���ȸ : http://www.hrd.go.kr > my page �̷���ȸ���� </li>
							</ul>
							<p>* ������û �� ���� �ֽø� ȯ�޿� ���� ���ϰ� �ȳ��ص帳�ϴ�.</p>
							-->
						</div>
						<!-- //con_wrap -->
						
						<div class="btn_wrap c" style="padding:30px;">
							<!--
							<a href="/Upload/employ.zip" class="btn mid green1">�Ʒú� ��û���� �ٿ�</a><br/>
							<a href="/Upload/�������������̿�_���Ǽ�(�ٷ���).zip" class="btn mid green1" style="margin-top:10px;">�������������̿� ���Ǽ� �ٿ�</a>
							-->
							<a href="/Upload/employ2.zip" class="btnGreenBorder big">�Ʒú� ��û���� �ٿ�</a><br/>
						</div>
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