<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
'// 4[CourseReview] (pre1)
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

SubjectName = "�����ذ��� ���� ��� �˰���"
CourseID = "DS_Advanced"
%>

<%
	dim strDate
	'//strDate = "2017.12.9~2017.12.31"
	strDate = "(����)"
%>
<!DOCTYPE html>

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!--#include virtual="/Include/config.asp"--> <!-- 4[CourseReview] (pre2) -->
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			
			/* page load ���� SNB ���� */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [����] ��Ʈ�������� ON
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [����] ��Ʈ�������� SUB - OPEN
			$(".snb_1709 .newdepth3.newwrap.no4").addClass("on").removeClass("plus").addClass("minus");	// �ڷᱸ��/�˰��� ON 
			$(".snb_1709 .newdepth4_wrap.no4").addClass("on").css('display','block');	// �ڷᱸ��/�˰��� SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no4 li:eq(2) a").addClass("on");				// �ָ�/��� ON
		});
		
		
	</script>
	<script language="javascript"> 
/*******	
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_C.asp";
************/			   
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
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܱ��ٽɰ���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[����]��Ʈ��������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ڷᱸ��/�˰���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ָ�/��� �˰���
						</p>
						<h4>�����ذ��� ���� ��� �˰���</h4>
					</div>
					<section class="section">
					
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">�����ذ��� ���� ��� �˰���</td>
											
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul>
													<li><%=strDate%></li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<ul class="ul_dot_gray">
													<li>13:00 ~ 18:00 (5�ð� / ��,�� / ��40�ð�)</li>
												</ul>
											</td>
											
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>900,000��</td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear:both; height:10px;"></div>

							</div>
<!--
<div class="myBlackBox">
	<p>SW�����ذ� �����̶�? <span class="myYellow">��� ������ ���� �ذ��� �� �� �ִ� �ɷ�</span>�� ���մϴ�.</p>
	<p>������������ ����� �߱� �˰����� �����ذ� �ɷ��� �̿��Ͽ� �� �� <span class="myYellow">�ǹ����� ���Ǵ� ��� �˰��� �����ذ��� �� �� �ִ� �ɷ��� Ű���ݴϴ�.</span></p>
	<p>�����ذ�ɷ��� ���� �������ǰ� �䱸������ �����ϰ� �ּ��� ����� ã�Ƴ��� ���̴�.</p>
	<p>�־��� ������ �°� ȿ�������� ������ �ذ��ϴ� ������ ����п� ���� ����� �Ʒ��� �ʿ��մϴ�.</p>
	<p><span class="myYellow">��������м�, ���ǹ��� ���� �����Ͽ� ������ ����ϴ� �����Դϴ�.</span></p>
</div>
-->
						</div>
						<!-- //con_wrap1709 -->
						
						<div class="con_wrap1709">
							<h5>���� �ε��</h5>
							<div>
								<img src="img_Roadmap_C4.png" style="width:100%;"/>
							</div>
						</div>

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li><a href="/Course/ShortCourse/DetailPage/Course_AlgorithmIntermediate.asp" target="_blank">�߱޾˰���</a>�� �����Ͻ� ��</li>
								<li>SW ���� �ذῪ���� �����Ѿ� �Ǵ� ��</li>
								<li>���� ����� ���Ͻô� ��</li>
								<li>SW Ư��� ���п� �����ϰ� ���� ��</li>
								<li>���� ������ȸ�� �غ��ϴ� ��</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5>��������</h5>
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>�˰��� ���ʸ� �н��� ��, ���� �˰����� �н��Ѵ�.</li>
		<li>�پ��� �˰����� �⺻���� ������ �������� �����Ͽ� ������ �ذ��Ѵ�.</li>
		<li>ȿ������ �˰����� �ʿ伺�� �����ϰ� �˰����� ����������� �� �ϳ��� �ð����⵵�� ���� �����Ѵ�.</li>
		<li>SW �����ذῪ���̶� �����ΰ��� �����ϰ� ������ ��ȭ�ϴ� ����� �����Ѵ�.</li>
	</ul>
</div>
-->
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:45%">
										<col style="width:45%">
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
											<td class="darker c" scope="row" rowspan="2">1����</td>
											<td rowspan="2">
												����� �˰����� Ư���� �����ϰ� ���ȣ���� �н��Ѵ�.<br/>
												Ž��˰����� ������ �� �����ذ�ɷ��� ����Ѵ�.
											</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>���⵵ �м�, �˰��� ȿ��, ��Ʈ����</li>
													<li>Ž��˰���, ���丮������Լ�, �����˻����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>����, ����缼�ϱ��, �κ����ջ��� �� ����</li>
													<li>�賶���α�</li>
													<li>����Ǯ��</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td class="darker c" scope="row" rowspan="2">2����</td>
											<td rowspan="2">
												������������� �����ϰ� �����İ� ���������� �н��Ѵ�.<br/>
												��Ʈ��ŷ �˰����� �����ϰ� �н��Ѵ�.
											</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>�������� �� ��Ʈ��ŷ, ��������, �����˻�, ������</li>
													<li>�����˻� �׸���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>������Ʈ��, ���� ����Ǯ��</li>
													<li>�迭�� �̿��� Ʈ��ǥ��</li>
													<li>����Ǯ��</li>
												</ul>
											</td>
										</tr>
										
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>Ž�� �˰��� �� ���� ����� ��������� ���ؼ� �н��Ѵ�.</li>
		<li>�׷����� �⺻���� �� ����˰����� �����ϰ� ������ ���غ���.</li>
		<li>�˰��� ���ɺм��� �����ϴ� ����� �н��Ѵ�. �Ǵ� ���� ��� �˰��� ���ɺм��� �����Ѵ�.</li>
	</ul>
</div>
-->
										<tr>
											<td class="darker c" scope="row" rowspan="2">3����</td>
											<td rowspan="2">������ �׷����� Ž������ �̿��Ͽ� �ּ� ����Ʈ�� �˰����� �н��Ѵ�.</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>�������, �׷���Ž��, DFS, BFS, ��ȣ��Ÿǥ��</li>
													<li>�ּҺ�� ����Ʈ��, ����Ž��Ʈ��, ���վ˰���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>���� �˰���, KRUSKAL �˰���, Dijkstra �˰���</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td class="darker c" scope="row" rowspan="2">4����</td>
											<td rowspan="2">������ �˰��� ���� �н��ϰ� �Ǻ���ġ����� �����غ���.</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>�������˰���, ���ϸ�Ī, Ʈ���̾˰���</li>
													<li>�����;���, ������, ����Ŀ��</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>�Ǻ���ġ����, ������ȹ�˰���, ������Ʈ��Ž��</li>
												</ul>
											</td>
										</tr>
									
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>������ �˰��� �� �پ��� �����ذ�ɷ��� ����Ѵ�.</li>
		<li>�����ø��ǾƵ� ���⹮���� Ǯ���Ѵ�.</li>
	</ul>
</div>
-->
										<tr>
											<td class="darker c" scope="row" rowspan="2">5����</td>
											<td rowspan="2">
												����Ǯ�� �ذ����� �н��ϰ� �پ��� ���⹮���� Ǯ�������μ� ���� �ذ� �ɷ��� ����Ѵ�.
											</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>�����˰���, ��������˰���, ��Ƽ��, ������</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>���⹮��Ǯ�� �� �������� �ذ�������</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="2">6����</td>
											<td rowspan="2">
												����Ǯ�� �ذ����� �н��ϰ� �پ��� ���⹮���� Ǯ�������μ� ���� �ذ� �ɷ��� ����Ѵ�.
											</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>�۾� �����층, ���� ���� ���� ���</li>
													<li>���� ������</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>���⹮�� ����Ǯ�� �� �������� �ذ�������</li>
												</ul>
											</td>
										</tr>
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>�˰����� ������ ���ٹ��� �����ϰ� �����غ���.</li>
		<li>�������� �� ���ǰ�縦 �����غ��� ������ ����Ѵ�.</li>
	</ul>
</div>
-->

										<tr>
											<td class="darker c" scope="row" rowspan="2">7����</td>
											<td rowspan="2">
												����Ǯ�� ����� �����ϰ� �˰��� �ذ��� ������ ������ �����ϰ� �Ʒ��Ѵ�.
											</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>������ �ٻ��, ������</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>���⹮�� ����Ǯ�� �� �������� �ذ�������</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="2">8����</td>
											<td rowspan="2">
												������ ���������� �����ϸ鼭 �پ��� ���������� �н��ϰ� ���ǰ�縦 �����Ѵ�.
											</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>���н��� �̿��ϴ� �˰��� ���� Ǯ��</li>
													<li>���� ��ȹ�� ����</li>
													<li>��Ʈ��ŷ ����</li>
													<li>Ž�� �˰��� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>���⹮�� ����Ǯ�� �� �������� �ذ�������</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- �󰭾ȳ� ���� -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
							</div>
							<div style="clear:both;"></div>

							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.1423 &nbsp;(email:egchung@bit.kr)</p>-->
							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
						</div>
						<!-- con_wrap1709 -->

						<!-- �ڰ������� �Ұ� -->
						<!-- # i n clude virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCCPM.asp"-->
						<!-- /�ڰ������� �Ұ� -->

						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=DS_Advanced" class="btn mid green1">�����ϱ�</a>
						</div>
						-->
					</section>
				</div>
				<!--<a href="#this" class="moveTop">Top</a>-->
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<!--<hr>-->
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>