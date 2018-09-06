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

			$(".snb_1709 a.newdepth1").eq(1).addClass("on");			// �����Ⱓ�����������
			$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");	// �����Ⱓ�����������
			$(".snb_1709 .newdepth2_wrap.no2").find("li a").eq(4).addClass("on");  	// JAVA ��� ������ �м��� ���� ����η� �缺����
		});
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/Kukka/M/Course_Kukka_JavaBigData_2016.asp";
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
						<p style="letter-spacing:-1px;">
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�����������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�����Ⱓ�����������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>JAVA ��� ������ �м��� ���� ����η� �缺����
						</p>
						<h4 style="float:left; letter-spacing:0px;" >JAVA ��� ������ �м��� ���� ����η� �缺����
						<!-- ������ûbtn --> 
						
						<a href="https://pf.kakao.com/_SmhqV"  title="īī���� ����û" style="float:right; margin:12px 0px 12px 12px;">
							<img src="/Images/Btns/btn_Kakao.png"/>
						</a>

						<a href="/Register/Request/register_kukka1.asp?app_CourseID=KUKA18_ED"  title="������û" style="float:right; margin:12px 0;">
							<img src="/Images/Btns/btn_ApplyCourse.png"/>
						</a>						
</h4>
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__KUKA18_BD.inc" -->
											</td>
											<th>���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__KUKA18_BD.inc" -->
												<!--09:00 ~ 18:00 (8�ð�/��960�ð�)-->
											</td>
										</tr>
										<tr>
											<th>������</th>
											<td>����</td>
											<th>�Ʒ������</th>
											<td>�� �� 30����</td>
										</tr>
										<tr>
											<th>��������</th>
											<td>25��</td>
											<th>����</th>
											<td>
												������ �Ŵ���: 02-3486-1248
											</td>
										</tr>
									</tbody>
								</table> 
								<div style="clear:both; height:10px;"></div>
							</div>
						</div>

						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p>
								�� ������ ������ �÷��� ����, �м� ����� �ڹ� ����� �� �о߿� ���� �Ͽ� �ϳ��� ���ο� ����Ͻ��� �����ϴ� �ɷ��� ����Ͽ� �ǹ��� ���밡���� ������Ʈ�� �����ϰ� JAVA, ������ �о߷� ������ �������� �ϴ� �����Դϴ�. 
							</p>							
						</div>

						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5> </h5>
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
Java Programming
											</td>
											<td>
-Java ����ȯ�� ����<br/>
-Java �⺻ �� ��ü���� ���α׷��� �� ��Ű�� �н�<br/>
-�÷��� �����ӿ�ũ, ����, �˻� �˰���, Thread I/O ��Ʈ��ŷ
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Java Web Programming
											</td>
											<td>
-ȯ�漳��<br/>
-JSP �������<br/>
-JSP ���ù�<br/>
-��ó���� ���� ���ε�<br/>
-JSP �⺻��ü<br/>
-������<br/>
-����ó��<br/>
-������Ű<br/>
-�ڹٺ�<br/>
-JDBC<br/>
-jQuery 

											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Linux Admin
											</td>
											<td>
-������ ��ġ<br/>
-Ŀ�� ������ & ������ �ý���<br/>
-������ �⺻ ��ɾ�<br/>
-���丮 �� ���ϱ����� ����<br/>
-������ �� �Ұ�<br/>
-VIM ������<br/>
-�� ���α׷��� 
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
DBMS
											</td>
											<td>
-�����ͺ��̽� ����� ����Ŭ ��ġ<br/>
-SQL�� �⺻<br/>
-SQL Plus ��ɾ�<br/>
-Select�� Ư�������� �����ϱ�<br/>
-SQL �ֿ��Լ�<br/>
-�׷��Լ�<br/>
-����<br/>
-��������<br/>
-���̺� ���� ����, ���� �� �����ϴ� DDL<br/>
-���̺��� �����߰�, ����, �����ϴ� DDL 											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
J Unit 
											</td>
											<td>
-J Unit ����<br/>
-�׽�Ʈ �ֵ� ����<br/>
-Test with J Unit<br/>
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
TDD
											</td>
											<td>
-TDD ����<br/>
-TDD ��Ģ<br/>
-TDD ����Ŭ
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Framework Programming
											</td>
											<td>
-Spring Framework�� ���α����� ���ۿ���<br/>
-Spring Framework�� �̿��� ���� �� ����<br/>
-Spring MVC ��� �Ұ� �� �ǽ�<br/>
-iBatis�� �̿��� JDBC ���α׷��� �� iBatis ��ޱ���� Caching<br/>
-Grouping, ORM�� �н�
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
UML
											</td>
											<td>
-UML�⺻ ���� ����, ��ü������ Ư��, UML ������� �н�<br/>
-Ŭ������ ���� �⺻ Ư���� �ڵ�, Ŭ���� ����� �н�<br/>
-���̾�׷��� ������ �� ���̾�׷� ��ȯ�� ���� ���� �н� �� ����
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Bigdata Programming 1
											</td>
											<td>
-����� ����<br/>
-�Լ� �� ��ü�� ���<br/>
-��Ű��<br/>
-�ܺ� ������ �ޱ�<br/>
-NoSQL ������ Ư¡<br/>
-���� ������ ������ ����<br/>
-MongoDB�� ���� Data modeling 
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Bigdata Programming 2
											</td>
											<td>
-�����Ͷ�?<br/>
-�������� ��<br/>
-������ �ý����� ����<br/>
-Apache Hadoop�� Ư¡<br/>
-Apache Architecture<br/>
-HDFS ����<br/>
-MapReduce �����ӿ�ũ<br/>
-����� ����<br/>
-Python Script<br/>
-Pig Programming 
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Team Project
											</td>
											<td>
-���ݱ��� ��� ��� ����� ���ؼ� �ǹ� ������ �´� ������Ʈ�� ������ ���� �ܰ�� 4�� ���ܷ� ���� ����<br/>
-�ֽ� ������Ʈ ������ �����Ͽ� 3���� ���� ������ ���Һд� �� ��ȣ ���� �Ͽ� ������Ʈ �����ϸ�, ���� ����<br/> 
-���õ� �ڷ� ����, �ʿ��� �н�, ��Ȯ��, ���� ����, ����ȯ�汸�� �� ����, �����׽�Ʈ ���� ���� ������ �Ϸ�<br/>
-�ܺξ�ü �����ڵ��� ���� �Ͽ� ���� ����ȸ�� ������ �Ѵ�.  
											</td>
										</tr>
									</tbody>
								</table>
								<div style="clear:both;"></div>
							</div>
						</div>
						<!-- con_wrap1709 -->
						
						<div class="con_wrap1709">
							<h5>����Ư��/����</h5>
							<p>
								1. ������ ���� <br/>
  								2. �Ʒü��� ���� ( �� 30����/�� ) <br/>
  								3. ����������α׷� ����
							</p>							
						</div>

						<div class="con_wrap1709 ">
							<h5>������� �� ��û���</h5>
								
							<p>
								<b>-�������</b><br>								
								 Java, �������� �о߿� �����ִ� �������, ����������, ���Ϲ��ī�� �߱� ������
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

						
						<div class="con_wrap1709" style="display: table; margin-left: auto; margin-right: auto;">
							<a href="https://pf.kakao.com/_SmhqV"  title="īī���� ����û" style="float:right; margin:12px 0px 12px 12px;">
								<img src="/Images/Btns/btn_Kakao.png"/>
							</a>

							<a href="/Register/Request/register_kukka1.asp?app_CourseID=KUKA18_ED"  title="������û" style="float:right; margin:12px 0;">
								<img src="/Images/Btns/btn_ApplyCourse.png"/>
							</a>
						</div>
						<!---
						<br><br>


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