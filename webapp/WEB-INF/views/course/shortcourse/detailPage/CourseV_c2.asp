<!DOCTYPE html>
<%
	SubjectName = "[����Ư��] �ڷᱸ�� �� �ǽ�"
	CourseID = "cdsVacation"
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

			$(".snb_1709 a.newdepth1").eq(1).addClass("on");								
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
				<!-- # i n clude virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- #include virtual = "/Include/SNB_CourseVacation_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/><a href="/Course/ShortCourse/Course_Summer2018.asp"/>��������Ư��</a>
						</p>
						<h4><%=SubjectName%></h4>
					</div>
					<section class="section">
						
						<!-- con_wrap -->
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__cdsVacation.inc" -->
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__cdsVacation.inc" -->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>394,440��</td>
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

						<div style="clear:both;"></div>

						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- �ε�� -->
						<div class="con_wrap1709">
							<h5>���� �ε��</h5>
							<img src="Images/C-Master.PNG" style="text-align:center; width:100%;"/>
							<div style="clear;both; height:10px;"></div>
							<!--<img src="img_Roadmap_C2.png" style="width:100%;"/>-->
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

						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5>��������</h5>
														<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:45%">
										<col style="width:45%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="c">��������</th>
											<th scope="col" class="c">������ǥ</th>
											<th scope="col" class="c">�������� �� �ǽ�����</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row"  class="c">1����</td>
											<td>
												�����Ϳ� ����ü�� ����, �ڷᱸ���� ����
											</td>
											<td>
C���α׷����� ����, �ڷᱸ���� ����, �⺻�� ���α׷���, ����Լ�
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">2����</td>
											<td>
����Ʈ������ ���ؿ� �ǽ�
											</td>
											<td>
�̱۸���Ʈ ����
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">3����</td>
											<td>
������ ���α����� �м� ���̺귯�� �Լ��� �����
											</td>
											<td>
��������, ���̺귯�� �����
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">4����</td>
											<td>
�Լ������Ϳ� void*�� �����ϰ� ���� �Ѵ�.
											</td>
											<td>
������̺귯���� ������ ���ؿ� ����, typedef�� ����
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">5����</td>
											<td>
�̴� �������� ���� ���� �ڵ��ɷ� ���
											</td>
											<td>
1���� �̴� ������Ʈ
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">6����</td>
											<td>
����ũ�帮��Ʈ�� ���Ͽ� ��ũ�帮��Ʈ�� ���� ����
											</td>
											<td>
ȯ����ũ�� ����Ʈ, ����ũ�� ����Ʈ
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">7����</td>
											<td>
��Ʈ ó���� ���� �ý����� �ݽ����� �����Ѵ�.
											</td>
											<td>
��Ʈó��, �ý��� �ݽ���,  �����Ϸ� ���û�� ��
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">8����</td>
											<td>
ť�� �⺻����� �ǽ�
											</td>
											<td>
ť�� ����, �������
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">9����</td>
											<td>
Ʈ���� ���ؿ� heap�� ����� �켱���� ť
											</td>
											<td>
tree�� ���ؿ� ��ȸ, �������� ����
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">10����</td>
											<td>
���� �������� ���� ���� �ڵ��ɷ� ���
											</td>
											<td>
2���� ������Ʈ
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">11����</td>
											<td>
Ž���� ����
											</td>
											<td>
����Ž�� , ����Ž��, ���̺귯��Ž�� ����
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">12����</td>
											<td>
BST�� ����, hash�� ����
											</td>
											<td>
����Ž��Ʈ��, rea-blackƮ��, �ؽ�
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">13����</td>
											<td>
����ũ�� ����, �׷��� �н�
											</td>
											<td>
������Ŀ�θ���Ʈ�� �ǽ�, ���ͽ�Ʈ��, A-star �˰���
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">14����</td>
											<td>
���ڿ��˻��˰���, make
											</td>
											<td>
�������� �˰���, make������ ����
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">15����</td>
											<td>
3���� �������� ���� ���� �ڵ��ɷ� ���
											</td>
											<td>
3���� ������Ʈ
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<p class="blueTxt">*. �̷� 60 : �ǽ� 40</p>
							<!-- �󰭾ȳ� ���� -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
							</div>
							<div style="clear:both;"></div>
							
							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
						</div>
						<!-- con_wrap1709 -->

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