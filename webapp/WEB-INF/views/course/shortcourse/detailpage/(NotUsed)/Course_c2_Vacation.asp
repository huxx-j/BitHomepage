<!DOCTYPE html>
<%
	'�ڷᱸ�� �� �ʱ� �˰���
	'//CourseID = "cds2_core"
	CourseID = "cdsVacation"
	
	StrPrice = "394,440��"
%>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<!-- �����޴��� ���������� �ش� ������ ÷���ϱ� ���� ����ϴ� �ҽ�
	<script type="text/javascript">
		$(document).ready(function(){
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
		});
	</script>
	-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			$(".snb_1709 a.newdepth1").eq(1).addClass("on");								// �ڷᱸ�� ON
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- # i n c lude virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- #include virtual = "/Include/SNB_CourseVacation_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܿ����Ư��
						</p>
						<h4>�ڷᱸ��</h4>
						<!--
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܱ��ٽɰ���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[����]��Ʈ��������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ڷᱸ��/�˰���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ָ���
						</p>
						<h4>�ڷᱸ�� �� �ʱ� �˰���</h4>
						-->
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=cds2_core" class="btn mid green1 fl mar_l10">�����ϱ�</a>-->
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=cdsVacation" class="btn mid green1 fl mar_l10">�����ϱ�</a>-->
					</div>
					<section class="section">
						
						<!-- con_wrap -->
						<div class="con_wrap1709 first">
							<div class="divTable"> <!--form_type1 mar_b20">-->
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
							</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__cdsVacation.inc" -->
												<!--
												2018.1.15 ~ 2018.2.2 <span class='greenTxt'>(������)</span><br/>
												2018.2.5 ~ 2018.2.27 <span class='greenTxt'>(���Ĺ�)</span>
												-->
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__cdsVacation.inc" -->
												<!--
												������ 9:00 ~ 13:00(4�ð� / ��60�ð�)<br/>
												���Ĺ� 14:00 ~ 18:00(4�ð� / ��60�ð�)
												-->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td><%= StrPrice %><!--394,440��--> <!--<span class="blueTxt">(��ü���� ����)</span>--></td>
											<th scope="row" class="tit">����������</th>
											<td>��뺸�� ��ȯ��</td>
										</tr>
										<tr>
											<th scope="row" class="tit">����</th>
											<td>30��</td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
								
							</div>
							
						</div>
						<!-- //con_wrap -->

						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- �ε�� -->
						<div class="con_wrap1709">
							<h5>���� �ε��</h5>
							<div>
								<img src="img_Roadmap_C2.png" style="width:100%;"/>
							</div>
						</div>
						<!-- //�ε�� -->

<!--						
<div class="myBlackBox" style="font-size:13pt;">
	<p>�������� ������ ��ǻ�� �о��� �ʼ� ������ �Ǿ����ϴ�.</p>
	<p>������� �� ���α׷��� �ɷ��Դϴ�.</p>
	<p>�ɷ��� ���׷��̵��ϸ� ���α׷��� �ϼ��� ���ϴ�.</p>
	<p>�⺻�� �������� �н��� ���� �����Ͽ� �н������μ� ���� �ذ�ɷ��� ��� ��ŵ�ϴ�.</p>
</div>
-->					
						<!-- con_wrap -->
						<div class="con_wrap1709"> <!-- style="z-index:1;">--> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<!--<h5>���� �����ϸ� �������?</h5>-->
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>C programming ������ �����Ͻ� ��</li>
								<li>�ڷᱸ���� ���ؼ� �ڼ��� �н��� �ʿ��Ͻź�</li>
								<li>���α׷��� �� �ҽ��ڵ� �м� �ɷ� ����� ���Ͻô� ��</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1709 ">
							<!--<h5>������ �����?</h5>-->
							<h5>��������</h5>
							<div class="divTable">
<!--							
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>�ڷᱸ���� �˰����� �⺻������ �����մϴ�.</li>
		<li>��ũ�� ����Ʈ�� �Ϻ��ϰ� �н��ϴ�.</li>
		<li>������ ���� �����͸� �ٽ� �����ϴ� ���� �н��մϴ�.</li>
	</ul>
</div>
-->
								<table>
									<colgroup>
										<col style="width:15%">
										<col style="width:45%">
										<col style="width:40%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">��������</th>
											<th scope="col">������ǥ</th>
											<th scope="col">�������� �� �ǽ�����</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row">1����</td>
											<td>
												�ڷᱸ���� �˰����� �⺻ ���� �н�<br/>
												����Ʈ�� �⺻ ���� �н�
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>�ڷᱸ���� �˰���</li>
													<li>���</li>
													<li>�̱۸�ũ�� ����Ʈ</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td class="darker c" scope="row">2����</td>
											<td>������ ���ĵ��� �������ν� ������ ����� ������ ���α����� �м��Ѵ�.</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>����,����,����,���԰���,��,��(���̺귯����),�պ�</li>
												</ul>
											</td>
										</tr>
										
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>����ũ�� ����Ʈ�� ������ �����մϴ�.</li>
		<li>�迭 �Ǵ� ��ũ�� ������ ���� ������ �����մϴ�.</li>
	</ul>
</div>
-->
										<tr>
											<td class="darker c" scope="row">3����</td>
											<td>ȯ���� ����ũ�� ����Ʈ ������ �н��մϴ�.</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>ȯ����ũ�� ����Ʈ</li>
													<li>����ũ�� ����Ʈ</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td class="darker c" scope="row">4����</td>
											<td>�ý����� �� ������ ���� �����ϰ� �����մϴ�.</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>��Ʈó���ǽ�, �ý��� �� ����, �����Ϸ� ���û�뿹</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td class="darker c" scope="row">5����</td>
											<td>
												ť�� �⺻����� ������ �������η� �н�
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>ť,ť�� �̿��� ������� ����,Ŀ���Ǵ���ũ�帮��Ʈ</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">6����</td>
											<td>
												Ʈ�� ������ ����
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>Ʈ��, tree����, Ʈ����ȸ, ����Ʈ��</li>
												</ul>
											</td>
										</tr>
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>Ž���� �ϱ� ���� �ڷᱸ���� �н��մϴ�.</li>
		<li>�׷����� �⺻����� Ž���� �н��մϴ�.</li>
	</ul>
</div>
-->
										<tr>
											<td class="darker c" scope="row">7����</td>
											<td>
												Ž���� ������ ����, ����Ž��Ʈ���� ������ �����Ѵ�.
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>���� Ž��, ����Ž��, ����Ž��Ʈ��, red-blackƮ��, �ؽ�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">8����</td>
											<td>
												�׷����� ǥ���� ����, �͸���Ž���� ������Ž���� �н��Ѵ�.
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>���ͽ�Ʈ��, A-star �˰���</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
							</div>
							<div style="clear:both;"></div>
							
							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
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