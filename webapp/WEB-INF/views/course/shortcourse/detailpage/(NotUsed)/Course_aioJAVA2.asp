<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
			$(".snb .depth2_wrap.no5").find("li a").eq(12).addClass("on");
		});
	</script>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t35">
				<h3><span class="courseName">Spring ���� �� JPA ����</span></h3>
				<h4>����Ʈ���� �ý����� ���������̼� Ƽ��� ���� Ƽ��, �������丮 Ƽ��� �����ϰ�,<br>
				�� Ƽ� �ʼ����� Spring MVC �����ӿ�ũ, ���� ���� ����, �������丮 ���� �����<br>
				����Ͽ� Java ���ø����̼��� �����ϴ� ����� �����ϰ� �ϸ�, Spring MVC<br>
				�� ���ø����̼� ���� ������ Spring ���� �� JPA ���� �������� �����ȴ�.</h4>
			</div>
		</div>
		<div id="Container_Wrap">
			
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl">Spring ���� �� JPA ����</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">�ܱ� / �ٽɿ�������</a>
							<a href="#this" class="last on">Spring ���� �� JPA ����</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>Spring ���� �� JPA ����</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">Spring ���� �� JPA ����</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul class="ul_dot_gray">
													<li>2015.06.10 ~ 2015.06.12 (3�� / �� 21�ð�)</li>
													<li>2015.09.15 ~ 2015.09.17 (3�� / �� 21�ð�)</li>
													<li>2015.11.18 ~ 2015.11.20 (3�� / �� 21�ð�)</li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>09:00 ~ 17:00 (1�� 7�ð� / �� ~ ��)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>260,000��<span class="greenTxt"> ���ϸ��� 5%���� (13,000��)</span></td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-1423</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">����� �Ʒ� : �켱������� ������� 273,524 �� | �ٿ�ó<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>
										</tr>
										-->
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�����Ұ�</h5>
							<p>Spring �����ӿ�ũ�� Java ���ø����̼� ������ ��� �� ǥ�� �����ӿ�ũ��, �������� ǥ�� �����ӿ�ũ�� Spring  �����ӿ�ũ�� ������� �ϰ� �ִ�. Spring ���� �����ӿ�ũ�� Spring MVC ���ø����̼��� �����ϴ� �Ͱ� ������ ������� �ս��� RESTful ���񽺸� ������ �� �ֵ��� ���� ����� �����Ѵ�. ���� Apache Camel �����ӿ�ũ�� ESB(Enterprise Service Bus)�� �����ϴ� ��� �� ǥ�� �������� �ܵ����� �Ǵ� �پ��� ���� �����ӿ�ũ�� �ٽ� �������� ���ǰ� �ִ�. �츮�� �� ��������Spring �����ӿ�ũ�� Apache Camel �����ӿ�ũ�� Ȱ���ϴ� ������ ���� ����� �н��Ѵ�.
							</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>Java EE ��� ����� ���� ����</li>
								<li>�ǹ� ������Ʈ�� ������ �� �ִ� Java  �ʼ� ����� ����</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<li>Java Programming</li>
								<li>��ü���� ������ ����</li>
								<li>Spring MVC �� ���ø����̼� ����</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>Ŀ��ŧ��</h5>
							<table class="table_col_type1">
								<caption>Spring ���� �� JPA ����</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:70%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">����</th>
										<th scope="col">����</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="c">Spring ���� ���</td>
										<td>
											<ul class="ul_dot_gray">
												<li>Java EE ���� ��� ���</li>
												<li>���� ����, Java �л� ��ü ���</li>
												<li>�� ����, REST  ����</li>
												<li>�޽�¡ ����,  ESB</li>
												<li>Spring ���� ���� ����</li>
												<li>Spring RMI ����</li>
												<li>Spring HttpInvoke ����</li>
												<li>Spring REST ����</li>
												<li>Spring REST Ŭ���̾�Ʈ</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="c">Spring ���� ���</td>
										<td>
											<ul class="ul_dot_gray">
												<li>Spring JMS ����</li>
												<li>Apache ActiveMQ �� Spring ����</li>
												<li>JMS �޽��� ������ ����</li>
												<li>JMS �޽��� �Һ��� ����</li>
												<li>Apache Camel ����</li>
												<li>Apache Camel �⺻ ����</li>
												<li>Apache Camel ������Ʈ</li>
												<li>Apache Camel ���� ����</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="c">Spring JPA ���</td>
										<td>
											<ul class="ul_dot_gray">
												<li>Java EE �������丮 ��� ���</li>
												<li>�������丮 Ƽ�� ����</li>
												<li>Java ������ �׼��� ����</li>
												<li>�����ͺ��̽� ����</li>
												<li>Java JDBC</li>
												<li>Spring JDBC</li>
												<li>Spring Ʈ�����</li>
												<li>JPA API / ����</li>
												<li>Spring �����ӿ�ũ ���� ����</li>
												<li>����Ƽ ��ü ����</li>
												<li>JPQL ����</li>
												<li>Criteria  ����</li>
												<li>JPA ������̼�</li>
												<li>CRUD  ����</li>
												<li>����Ƽ ��ü ����</li>
												<li>��Ӽ� ����</li>
												<li>��� ����</li>
												<li>Spring Data JPA ����</li>
												<li>CRUD ����</li>
												<li>���� �޼��� / ���</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
							<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.1423</p>
						</div>
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1">�����ϱ�</a>
						</div>
					</section>
				</div>
				<a href="#this" class="moveTop">Top</a>
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>