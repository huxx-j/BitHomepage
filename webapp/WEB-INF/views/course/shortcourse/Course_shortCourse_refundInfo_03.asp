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
			$(".snb_1709 a.newdepth1").eq(1).addClass("on");
			
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
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">����� ��Ź�Ʒ�(ȸ��ȯ��)</span></h3>
			</div>
		</div>
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
						<h4 style="float:left;">ȯ�޾ȳ� - ����� ��Ź�Ʒ�</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
					
					<section class="section">
						<div class="section_body">
							<!-- con_wrap -->
							<div class="con_wrap1709 mar_t30 bg_none" style="margin-left:66px;">
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
							<h5>����� ��Ź�Ʒ� �������̶�?</h5>
							<!--<p>��뺸�谡�Ի���忡 ���� ���� �ٷ��ڵ��� ���� �����Ʒ������� ����ְ� �Ʒú���� �δ��ϸ� �����ٷ��� ���� ������� �����Ʒ��� �ǽ��ϴ� ��� ���뵿�ο��� �Ʒú� ���� �����մϴ�. </p>-->
							<p>��뺸�谡�Ի���忡 ���� ���� �ٷ��ڵ��� ���� ��������� ���� ������ ����ְ� �Ʒú���� �δ��ϸ� �����ٷ��� ���� ������� �����Ʒ��� �ǽ��ϴ� ��� ���뵿�ο��� �Ʒú� ���� �����մϴ�. </p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<dl>
								<!--<dd>��뺸�迡 ������ ����ַμ� �Ҽ� �ٷ��� ��� ������ ���뵿��������κ��� ���������� �޾� �����Ʒ��� ���� �Ǵ� ��Ź�Ͽ� �ǽ��ϴ� ����� </dd>-->
								<dd>��뺸�迡 ������ ����ַμ� �Ҽ� �ٷ��� ��� ������ ���뵿��������κ��� ���������� �޾� �����Ʒ��� ���� �Ǵ� ��Ź�Ͽ� �ǽ��ϴ� ����� �Ʒô�� ��뺸�� �Ǻ�����</dd>
							</dl>
						</div>
						<div class="con_wrap1709">
							<h5>�Ʒô�� </h5>
							<dl>
								<dd>
									<ul class="ul_dot_gray">
										<!--
										<li>��뺸�� �Ǻ�����</li>
										<li>��뺸�� �Ǻ����ڰ� �ƴ� �ڷμ� �ش� ����ֿ��� ���� ��</li>
										<li>�ش� ����̳� �� ����� ���õǴ� ������� ����Ϸ��� ��(ä�뿹����) </li>
										<li>������������� ���� ����� ��</li>
										-->
										<li>����ֿ��� ���� �ڷμ�, ��뺸���� ���εǰ� �ִ� ��</li>
										<li>�ش� ����̳� �� ����� ���õǴ� ������� ����Ϸ��� ��(ä�뿹����) </li>
										<li>������������� ���� ����� ��</li>
									</ul>
								</dd>
							</dl>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap1709 last">
							<h5>�Ʒ����� �� ȯ�޾ȳ�</h5>
							<dl>
								<dd>
									1. ������û�� '������Ʒ�'���� ������ �ۼ� ��, ������û�� �մϴ�.
								</dd>
								<dd>
									2. ���Ʒú��û�����ٿ �� �ۼ��Ͽ�, �Ҽ� ȸ���� ������ �����Ͽ� �����մϴ�.<br/>
									 <!--<span style="margin-left:13px;">������� �� ����: �������� ��Ʋ������ �Ʒ���Źü�Ἥ / �ٷνð��� �������Ǽ� �� 1�ξ�</span><br/>-->
									 <div style="margin-left:13px;">
										������� �� ����: �������� ��Ʋ ������ <br/>
										�Ʒ���Źü�Ἥ / �ٷνð��� �������Ǽ� /  �������� �����̿� ���Ǽ� / ������� ����纻 �� 1�ξ�<br/>
									     ��û�� �����ǰ� : <a href="mailto:bithrd@bit.kr" class="email">bithrd@bit.kr</a>
									</div>
								</dd>
								<dd>
									3. ȸ�� ���Ƿ� �Ա� �Ǵ� ���ī��� ������ ��ü�� �����մϴ�.<br/>
									 <span style="margin-left:13px; font-weight:900;">��, �����Ʒð����� �⼮���� 80%�̻��� ��쿡�� ȯ�ް���</span>
								</dd>
								<dd>
									<!--4. �������� ��, ȸ�� ���� ����η°������� �Ʒú�� ������û���� �����Ͻø� 14���̳� ������ ȯ�� ������ �� �ֽ��ϴ�.-->
									4. �������� ��, �����Ʒð����� �⼮���� 80%�̻��� ��쿡�� ������ ȯ�� ������ �� �ֽ��ϴ�.
								</dd>
							</dl>
							<dl>
								<dd>
									<span class="blueTxt">* ������û �� ���� �ֽø� ȯ�޿� ���� ���ϰ� �ȳ��ص帳�ϴ�.</span>
								</dd>
							</dl>
							<!--
							<p>������û�� '������ȯ��'���� ������ �ۼ� �� ȸ��(��ǥ��)�� �̸����� �Ա� �Ǵ� ���ī��� ������ �����մϴ�.<br>
							<span class="redTxt">��, �����Ʒð����� �⼮���� 80%�̻��� ��쿡�� ȯ�ް���</span></p>
							<dl>
								<dt>�Ʒú� ��û���� ��������</dt>
								<dd class="mar_b5">
									<ul class="ul_dot_gray">
										<li>1. �Ʒ� ��Ź(��û)��༭ 1��</li>
										<li>2. ����� ����� �纻 1��</li>
										<li>3. �ٷνð��� �����ɷ°����Ʒ� ���Ǽ� 1�� (��ǥ���� ���� ������ ���� �ϼž� �մϴ�.)</li>
									</ul>
								</dd>
								<dd>* ������û �� �� �������� ��Ʈ�������� �ѽ� �Ǵ� �̸��Ϸ� ������ �� �����ٶ��ϴ�. FAX:02-3486-7890 &nbsp;TEL:02-3486-3456 &nbsp;e-mail:kimyj0723@bit.kr</dd>
							</dl>
							-->
						</div>
						<!-- //con_wrap -->
						<div class="btn_wrap c" style="padding:30px;">
							<!--
							<a href="/Upload/company.zip" class="btn mid green1">�Ʒú� ��û���� �ٿ�</a><br/>
							<a href="/Upload/�������������̿�_���Ǽ�(�����).zip" class="btn mid green1" style="margin-top:10px;">�������������̿� ���Ǽ� �ٿ�</a>
							-->
							<a href="/Upload/company2.zip" class="btnGreenBorder big">�Ʒú� ��û���� �ٿ�</a><br/>
							
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