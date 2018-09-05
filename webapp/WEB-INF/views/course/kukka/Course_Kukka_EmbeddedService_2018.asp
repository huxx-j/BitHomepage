<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<!DOCTYPE html>
<!-- not REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			$(".snb_1709 a.newdepth1").eq(1).addClass("on");				// �����Ⱓ�����������
			$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");		// �����Ⱓ�����������
			$(".snb_1709 .newdepth2_wrap.no2").find("li a").eq(2).addClass("on");  // ��������̸� Ȱ���� IoT ���� ����η� �缺����
		});
	</script>
	<script language="javascript"> 
	/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/Kukka/M/Course_Kukka_EmbeddedLinux_2017.asp";
	*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<style>
	/* white and narrowSNB */
	.moveTop { width:175px !important; background:#17538e url('/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	#Container_Wrap { min-height:initial; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }


#kakao{

    height: 26px;
    padding: 0 10px;
    font-weight: 600;
    display: inline-block !important;
    position: relative;
    margin: 0px;
    border-radius: 5px;
    text-align: center;
    line-height: 25px;
    cursor: pointer;
    border: 1px solid #1b499b;
    color: #1b499b;
    background-color: #ffeb33;

}

 

#jiwon{
    height: 26px;
    padding: 0 10px;
    font-weight: 600;
    display: inline-block !important;
    position: relative;
    margin: 0px;
    border-radius: 5px;
    text-align: center;
    line-height: 25px;
    cursor: pointer;
    border: 1px solid black;
    color: black;
    background-color: white;

}

</style>





<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseSupport_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�����������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�����Ⱓ�����������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�Ӻ������ IoT SW���� ����η¾缺 ����
						</p>
						<h4 style="float:left; letter-spacing:0px;" >�Ӻ������ IoT SW���� ����η¾缺 ����</h4>
						<!-- ������ûbtn -->
<!--
<a href="https://pf.kakao.com/_SmhqV" id = "kakao" title = "īī������ޱ�" style = "float:right; margin-top:24px; font-size:20px;">īī���� ����ϱ�</a>

<a href="/Register/Request/register_kukka1.asp?app_CourseID=KUKA18_ED" id = "jiwon" title = "��û�ϱ�" style = "float:right; margin-top:24px; margin-right:5px; font-size:20px;">�����ϱ�</a>
-->

						<a href="https://pf.kakao.com/_SmhqV"  title="īī���� ����û" style="float:right; margin:12px 0px 12px 12px;">
							<img src="/Images/Btns/btn_Kakao.png"/>
						</a>

						<a href="/Register/Request/register_kukka1.asp?app_CourseID=KUKA18_ED"  title="������û" style="float:right; margin:12px 0;">
							<img src="/Images/Btns/btn_ApplyCourse.png"/>
						</a>

					
						<div style="clear:both; height:10px;"></div>
					</div>

					<section>
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table style="box-shadow:none !important;">
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th>�����Ⱓ</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__KUKA18_ED.inc" -->
											</td>
											<th>���ǽð�</th>
											<td>
												<%
												'//<!-- # i n c  lude virtual="/Include/CourseDateTime/Time/Time__KUKA18_RD.inc" -->
												%>
												09:00 ~ 18:00 (��960�ð� / 6����)
											</td>
										</tr>
										<tr>
											<th>�������</th>
											<td>����</td>
											<th>�Ʒ������</th>
											<td>�� �� 30����</td>
										</tr>
										<tr>
											<th>��������</th>
											<td>20��</td>
											<th>����</th>
											<td>������ �Ŵ���: 02-3486-1248</td>
										</tr>
									</tbody>
								</table> 
								<div style="clear:both; height:10px;"></div>
							</div>
						</div>

						<div class="con_wrap1709">
							
							
						</div>
<!-- con_wrap1709 -->


						<div class="con_wrap1709 ">
							<h5>�����Ұ�</h5>
							<p>
								�Ӻ���� �ý��� �о߿��� �� �а� ���ǰ� �ִ� ARM ��� ���μ��� ���� �� ����̽� ������, ����� ���α׷���, RTOS, Embedded C���� �Ӻ���� �ٽɱ���� IoT �÷����� ����, IoT ��� ��������, IoT �ý��� ���α׷���, IoT ����̽� ���α׷��� ��, 4�� ��������� �ٽɺо��� IoT(�繰���ͳ�)���� ����� ������ ������Ʈ�� �����ϰ� �Ӻ����, IoT�о߷� ������ �������� �ϴ� �����Դϴ�.
							</p>
						</div>


						<div class="con_wrap1709 ">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:30%">
										<col style="width:70%">
									</colgroup>
									<!--
									<thead>
										<tr>
											<th scope="col" class="c">������</th>
											<th scope="col" class="c">���γ���</th>
										</tr>
									</thead>
									-->
									
									<tbody>
										<tr>
											<td scope="row" class="darker c">
C Programming	
											</td>
											<td>
	- ǥ�� C����� ��� �� Ȱ�� ��� ����<br>
	- ������, ��ó�� �� ���� ����� ���� ���� ���� ����<br>
	- �迭�� ������<br>
	- ������ ǥ�� �� ���ȭ ���α׷���<br>
	- �ڷᱸ���� �˰���
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
�Ӻ���� C
											</td>
											<td>
	- �Ӻ���� �ý��ۿ����� ���α׷��� ����<br>
	- C ����� �Ӻ���� �ý��� ���α׷��� ���� �� Ȱ��<br>
	- �Ӻ���� ���带 Ȱ���� �߿��� ���α׷���
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
�繰���ͳ� ���� �� �÷����� ���� ����
											</td>
											<td>
	- �繰 ���ͳ��� ���� �� ���� ����<br>
	- �繰 ���ͳ� ����̽� ���� �� ���� ���� ��� ����<br> 
	- �繰 ���ͳ� �÷����� Ŭ����, ���¼ҽ� �÷��� <br>
	- ���¼ҽ� �ϵ��� ���� ����<br>
	- �繰 ���ͳݰ� �Ӻ���� �ý���  ����
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
ARM ������ ����� <br>���α׷���
											</td>
											<td>
	- �Ӻ���� �ý��� ���� ����<br>
	- ARM ���μ��� ����<br>
	- ARM ����Ʈ���� ����<br>
	- ARM ���μ��� ����
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
ARM ����̽� ���α׷���

											</td>
											<td>
	- �ý��� �ʱ�ȭ ���� ����<br>
	- �޸� �ý��� ����<br>
	- ����̽��� ���� ���� ���� ����<br>
	- ���� �������̽������� ���� ���� ����<br>
	- ����̽� ���� ��� ����<br>
	- ��Ƽ�̵�� ����̽� ����
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
RTOS ������ Ȱ��

											</td>
											<td>
	- �ǽð� �ý��� �Ұ�<br>
	- �½�ũ ���<br>
	- �½�ũ ���(IPC)<br>
	- ARM ���μ���<br>
	- MicroC/OS-II ����
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
IoT �ý��� ���α׷���

											</td>
											<td>
	- ������ �Թ� (��ɾ�, ����ȯ��, �ý��� ������)<br>
	- �Ӻ���� ������ �ý��� ���� ȯ�� ����<br>
	- �Ӻ���� ������ �ý��� ���� ���� ȯ��

											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
IoT�� ����  OS ����
											</td>
											<td>
	- �Ӻ���� ������ ����<br>
	- ���� ���� ȯ������ �� ����<br>
	- ��Ʈ�δ�<br>
	- Ŀ�� �м�<br>
	- ��Ʈ ���� �ý���<br>
	- �ý��� ��Ű¡

											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
IoT ����̽� ����̹� 
											</td>
											<td>
	- ����̽� ����̹� �Ұ�<br>
	- Ŀ�� ��� ����<br>
	- Ŀ�� ����<br>
	- ������ ����̽� ����̹� ���� ��<br>
	- ĳ���� ����̽� ����̹� ����<br>
	- ��� ����̽� ����̹� ����

											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
IoT��� �������� ��<br> 
��Ʈ��ũ ���α׷��� 

											</td>
											<td>
	- ��Ʈ��ũ ����� ����<br>
	- ��Ʈ��ũ �������� ����<br>
	- ��Ÿ ������ ���<br>
	- BSD���� ���α׷���
											</td>
										</tr>

										<tr>
											<td scope="row" class="darker c">
Team Project

											</td>
											<td>
	- ���ݱ��� ��� ��� ����� ���ؼ� �ǹ� ������ �´� ������Ʈ�� ������ ���� �ܰ�� 4�� ���ܷ� ���� ����<br>
	- �ֽ� ������Ʈ ������ �����Ͽ� 3���� ���� ������ ���Һд� �� ��ȣ ���� �Ͽ� ������Ʈ �����ϸ�, ���� ����<br> 
	- ���õ� �ڷ� ����, �ʿ��� �н�, ��Ȯ��, ���� ����, ����ȯ�汸�� �� ����, �����׽�Ʈ ���� ���� ������ �Ϸ�<br>
	- �ܺξ�ü �����ڵ��� ���� �Ͽ� ���� ����ȸ�� ������ �Ѵ�. <br>
											</td>
										</tr>
										
										
									</tbody>
								</table>
								<div style="clear:both;"></div>
							</div>
						</div>
						<!-- con_wrap1709 -->

						<div class="con_wrap1709 ">
							<h5>����Ư��/����</h5>
							<p>
								1. ������ ���� <br>
  								2. �Ʒü��� ���� ( �� 30����/�� )<br>
 								3. ����������α׷� ����
							</p>
						</div>


						<div class="con_wrap1709 ">
							<h5>������� �� ��û���</h5>
								
							<p>
								<b>-�������</b><br>								
								IoT, �Ӻ���� �о߿� �����ִ� �������, ����������, ���Ϲ��ī�� �߱� ������
							</p>
							<br><br>
							<p>
								<b>-��û���</b><br>								
								1. ��Ʈ�������� ȸ������ �� �¶��� ��û �� �����׽�Ʈ �� ���<br>
   								2. �ְ������� ��뼾�� �湮 ��, ���Ϲ��ī�� ��û
							</p>
							
						</div>
						<br><br>

						<!-- con_wrap1709 -->

						<div class="con_wrap1709">
							<img src="Images/proce.png" style="width:630px"/><br><br>
						</div>

						
						<div class="con_wrap1709" style="text-align: center;">

							<a href="/Register/Request/register_kukka1.asp?app_CourseID=KUKA18_ED" id = "jiwon" title = "��û�ϱ�" style = "margin-top:24px; margin-right:10px; font-size:20px;">�����ϱ�</a>

							<a href="https://pf.kakao.com/_SmhqV" id = "kakao" title = "īī������ޱ�" style = " margin-top:24px; font-size:20px;">īī���� ����ϱ�</a>

							
						</div>
<br><br>




							<!--
						<div class="con_wrap1709">
							<h5>1. ���� �Ұ�</h5>
							<p>
								��� �繰�� ���ͳ��� ������� �����Ͽ� ����� �繰, �繰�� �繰���� ������ ��ȣ �����ϴ� ����� ������ �繰���ͳݿ� ���� ������ ����ǰ� �ִ�. �̿� �� ������ �繰���ͳ� �÷��� ���� ���� �� ����̽��� ���� ���İ� ���ߴɷ��� ����ϱ� ���� IoT�� ���� ���� �� ������ ���� ���� ���� �� IoT ����̽� �� ���� ���߿� ���ʰ� �Ǵ� �پ��� ���α׷��� ������ ���� �� ��, IoT ����̽��� ��ǥ���� ���¼ҽ� �ϵ���� ����� ���̿� �Ƶ��̳� ������� �ϵ��� ���� ���İ� ����̹� ���� Ŀ�� ����� �ý��� �� ��Ʈ��ũ ���α׷����� �н��ϰ� ���� �ǽ��Ѵ�. �� ��, ����̽� ���߿� ���� ����� ������ �������� IoT ���� ���߿� �ʿ��� �پ��� Ŭ���̾�Ʈ, ���� ������� �����ϰ� �ȴ�.
							</p>
						</div>

						<div class="con_wrap1709">
							<h5>2. ���� Ư��</h5>
							<ul class="pd_l5">
								<li> - ������ ���� ����</li>
								<li> - �Ʒü��� �ִ� �� 1,896,000�� ���� (������� ���� �Ʒü����� �����˴ϴ�.)</li>
								<li> - �������� �� ��� ����</li>
							</ul>
						</div>
						
						<div class="con_wrap1709">
							<h5>3. ���� ���</h5>
							<ul class="pd_15">
								<li>�繰 ���ͳݿ� ���� ������ �ʿ��� �ʱ� �����Ͼ�</li>
								<li>�繰���ͳ� ����̽� �� ���� ���߿� �����ִ� ��</li>
								<li>�繰���ͳ� ���� ���� �ű� ����� ��ȹ(�غ�)�ϴ� â�� �غ���</li>
								<li>�繰���ͳ� �о߷� ���θ� ������ ����(��)�� �� �������</li>
							</ul>
						</div>
						
						<div class="con_wrap1709">
							<h5>4. �����Ⱓ �� ����</h5>
							<p>������ ���� / 25��</p>
						</div>
						
						<div class="con_wrap1709">
							<h5>5. ��û���</h5>
							<p>�¶��� ������û �� ����û<br/>��ȭ - 02-3486-3456<br/>īī���� - �÷���ģ��(��Ʈ�������� �˻�)</p>
						</div>

						<div class="con_wrap1709">
							<h5>6. �����ð�</h5>
							<p>
-->
<%							
'// < ! - -  #include virtual="/Include/CourseDateTime/Time/Time__KUKA18_RD.inc" - - >
%>
								<!--08:50 ~ 18:00 (�׷콺�͵� ���� 22:00����)<br/>- �� 960�ð�(6����)-->
<!--
								</p>
						</div>
						
						<div class="con_wrap1709">
							<h5>7. ���� �Ⱓ</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:25%">
										<col style="width:75%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="col">������</th>
											<td style="letter-spacing:-0.5px;"><b>��������̸� Ȱ���� IoT ���� ����η� �缺����</b></td>
										</tr>
										<tr>
											<th scope="col">�����Ⱓ</th>
											<td style="letter-spacing:-0.5px;">
-->
<%											
'//												<!-- #include virtual="/Include/CourseDateTime/Date/Date__KUKA18_RD.inc" --> 6����(120��) ��960�ð�
%>
<!--
											</td>
										</tr>
										<tr>
											<th scope="col">��������</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="con_wrap1709">
							<h5>8. �غ� ����</h5>
							<p><b>- �Ǿ��� ���Ϲ��ī�� �߱�(�ּ� 2��, �ִ� 5~6�� �ҿ�)</b></p>
							<p><b>- ���������Ű�� ���� ī��߱�(�ּ� 4�� �̻�)</b></p>
							<p><span style="margin-left:7px; background:#ffff99;">���� �Ʒû� Ư��: �Ʒ� ���� 10���� ������ �߰�  </span></p>
							<p style="margin-left:7px; font-size:1em; "><b>* ���� ī��߱��� �ּ��� ���� ��뼾�Ϳ��� �߱� �����մϴ�.</b></p>
							<p style="color:#7f7f7f; font-size:1em; line-height:13px;">�� ��, �Ʒ�������� 1���� ���� �⼮���� 80% �̻��� ��쿡�� ���޹��� �� �ֽ��ϴ�.</p>
							<p style="color:#7f7f7f; font-size:1em; line-height:13px;">�� �Ǿ��޿��� �����ô� �����̳� �����ٷλ���� �����ϰ� ��� ���ȿ��� �Ʒ�������� ���޹��� �� �����ϴ�.</p>
							<ul class="pd_l5">
								<li>
									<p class="diagram_wrap l" style="margin-top:0px;"><img src="/Images/Content/Diagram/img_course_diagram_06.PNG" style="width:100%;"></p>
								</li>
							</ul>
							<p> - ������� 2��</b><p>
						</div>
						
						<div class="con_wrap1709 last">
							<h5>9. ��������</h5>

							<style>
								.specialTable {
									width:20%;
									float:left;
								}
								.specialDiv {
									width:1%;
									padding:0 20px;
									line-height:230px;
									float:left;
								}
								.specialTable tr td {
									border-bottom:initial !important;
									border:1px solid !important;
								}
								.specialTable tr:nth-child(1) td { text-align:center; }
								.specialTable tr:nth-child(2) { height:75px; }
								.specialTable tr:nth-child(3) { height:95px; }
							</style>
							<table class="specialTable">
								<tr><td>1�ܰ�</td></tr>
								<tr><td>IoT�� ���� ���� �� ������ ���� �⺻ ���</td></tr>
								<tr><td>IoT ����, ������, Java, Python ���α׷���</td></tr>
							</table>
							<div class="specialDiv">
								��
							</div>
							<table class="specialTable">
								<tr><td>2�ܰ�</td></tr>
								<tr><td>IoT ����̽� ����</td></tr>
								<tr><td>��������̸� Ȱ���� �ý��� �� ��Ʈ��ũ ���α׷���</td></tr>
							</table>
							<div class="specialDiv">
								��
							</div>
							<table class="specialTable">
								<tr><td>3�ܰ�</td></tr>
								<tr><td>IoT ���� ����</td></tr>
								<tr><td>Pyhton ��, Node.JS, ��������� ��� ���� �ȵ���̵� �� �ۼ�</td></tr>
							</table>
							<div class="specialDiv">
								��
							</div>
							<table class="specialTable">
								<tr><td>4�ܰ�</td></tr>
								<tr><td>������Ʈ ����</td></tr>
								<tr><td>��������̸� Ȱ���� IoT ���� ������Ʈ ����</td></tr>
							</table>
							<div style="clear:both;"></div>
						</div>
						-->
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