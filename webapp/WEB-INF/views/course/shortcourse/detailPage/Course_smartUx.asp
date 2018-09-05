<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("SMARTUX")).addClass("on");
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">Smart UX Design Planning</span></h3>
				<h4></h4>
			</div>
		</div>
		<div id="Container_Wrap">
			
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl">Smart UX Design Planning</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">�ܱ� / �ٽɿ�������</a>
							<a href="#this" class="last on">Smart UX Design Planning</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>Smart UX Design Planning</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">Smart UX Design Planning</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td><del>2014.08.23 ~ 2014.10.04 (�����, �� 6ȸ)</del></td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>12:00 ~ 16:00 (4�ð�, �� 24�ð�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>800,000��</td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-1423</td>
										</tr>
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">�ٷ���ī��(������ : 640,000�� | �������� : 800,000��) | ����� �Ʒ� : �켱������� ������� 135,554��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a><br>* �ٿ�ó</td>
										</tr>
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
							<p>User Context Design! �� ���´� ���ø����̼� �������� ��ȹ�ϴ� �������� ó������ ȸ�翡 �Ի������� �ϴ� ����, ����(��)�� ��� �����̳ʿ��� ���ø����̼� �������� �����ϰ� ����ڸ� �����ϴ� �������� ���� UX/UI/GUI������������ ��� �Ϳ� �� ������ �ΰ� �ְ� �̸� �������� ���� �����̳ʿ��Դ� ����� ������ ����� �ִ� ��Ʈ�������� ������ �� �ִ� ��ȸ��, ����(��)�����Դ� ���� �� ���� ���� �ǹ����� ����� ���������� ������ ��, ��µ����̳ʿ��Դ� ��� �� �ڽ��� ������ Ȯ���Ű�� ������ ��ȹ������ ����Ƽ �ִ� ��Ʈ�������� ������Ʈ�Ͽ� ���忡�� �����̳ʷμ��� ������� �� �ܰ� ���� �� �ְ� �帧�� �°� �����ϴ� ����� �����ϰ��� �Ѵ�.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>User Experience Design�� �������� �� ������ ������ �� �ִ�. </li>
								<li>Application service���� ����ڸ� ����� ���� ���̵� ������ �� �ִ�.</li>
								<li>�丣�ҳ��� �����ϰ� �ش� �ൿ���Ͽ� ���� ����� �׽�Ʈ(User Test)�� ���� �� �� �ִ�.</li>
								<li>������ ���� ������ �ǰ��� ������ Ŀ�´����̼� �� �� �ִ� ��ų�� �ø� �� �ִ�.</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>��������</h5>
							<p>��Smart User Experience Design! ����Ʈ�� �ô�! ����Ʈ�� ����� ����������� �������!<br>
							�ֱ� ���Ӱ� �����Ͽ� �츮���� ���� 3000�� �� �̻��� ����ϰ� �ִ� Smart Phone�� �ô밡 �����ߴ�.<br>
							�׿� ���Ҿ� ����� ������ ������ ���μ����� �ް��� ��ȭ�߰�, �� Market���� ���ø����̼��� ������ �Ͼ�鼭 ����� ���� ������(User Experience Design)�� ���� ����(Needs)�� �޼�ȭ �Ǿ���. �׷��� ������ ����ڿ� ����̽��� Ư���� ����Ͽ� �پ��� �κп��� ���̵� ������ �������� �������� ������ ���µǰ� �帧�� �������� ���ϰ� �Ǿ���. �� ���� �츮����� ������ �⺻�� �߱��ϱ� ���ٴ� ���� ��ȭ�� �帧�� �°� �ż��� ������ �Ծ���, �����̳ʵ��� ���� �ϱ� ���� visual ��ũ���� ������ �����߾��� ������ ����ڸ� ����ϰ� ������ ���̵� ȥ���ϴ� �����ϴ� �����ο� ���ؼ��� ������ ���� ����. Ư�� �����ϴ� �������� ��ǥ���� ������ ���ø����̼��� �츮�ô뿡 �ʼ�ǰ�� ����Ʈ������ �������� �����ǰ� ������ ����ڰ� �����ϰ� �ִ�. �̷��� �� ��Ȳ���� �� ���� ����� ���� �������� �������� ���ߴ� �����̳ʿ��� ���ø����̼� �����ο� �ʿ��� ���μ����� �����Ͽ� �����ϴ� �������� �����ϰ� �ϰ�, ���� �ǹ������� ������Ʈ�� ������ �����ϴ� ����� �Բ� ��������� �����̳��� ������ �� �ܰ� ���׷��̵� ��Ű�� ���� �� ������ �����̴�.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>UX������ �̷а� ���ø����̼� ������ ������Ʈ�� ���� ����</li>
								<li>����߽��� ���̽� ���͵� ����� ����</li>
								<li>���� ������ ���� ����� ���� ������ ���μ����� ���� �� ���������� ����</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>����� �غ����� ���� �����̳� �� ����(��)��, ������� ����ϴ� 2-5�� �� �����̳�</li>
								<li>���ø����̼��� ����� ���� ������(UX Design) ���μ����� ���� ���� �����̳� �� ����(��)��</li>
								<li>�ʱ޵����̳ʿ��� �߱޵����̳ʷ� ��ȯ�ϸ� User Context�� ������ ���� ���� �����̳� �� ����(��)��</li>
								<li>�ǹ������� �о߿��� UX/UI �����α�ȹ ������ ������ ������ �;��ϴ� �����̳�(��� 2�� �̻�)</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>����Ұ�</h5>
							<p class="fb">������</p>
							<ul class="ul_dot_gray">
								<li>��ȭ���ڴ��б� �����δ��п� UX������ ���� �������м���</li>
								<li>���Ǵ��б� �̵���к� ���л�</li>
								<li>(��)Finger ���̳������� CMS����� ����</li>
							</ul>
							<p></p>
							<ul class="ul_dot_gray">
								<li>K���� App UX/UI������ ��ȹ</li>
								<li>�ϳ����� LPGA, �̵��ϸ� K-LPGA ������ȸ App, �ڻ� Shake IOS App, UX/UI ������ ��ȹ</li>
								<li>KBS ����ƮȨ(K-Veiw) TV UX/UI ������ ��ȹ</li>
								<li>KT OCP ���� 3��(���,��ؼ�, �ε����ũ) UX/UI ������ ��ȹ</li>
								<li>CJ ONE ����� ��, CJ One App UX/UI������ ��ȹ</li>
								<li>���뿥�ؼ���Ʈ ���� App GUI ������ ���̵�</li>
								<li>�ܱ����� �˻����չ��� �ý��� UX/UI ������ ��ȹ</li>
								<li>��õ��������û ����Ʈ UI������</li>
								<li>��õ������ ����� ����Ʈ UI ������</li>
								<li>�Ｚ�ɳ콺 ����Ʈ UI������</li>
								<li>�������ݼַ��(����, ����, ����) SI ������</li>
								<li>�� �� �پ��� Device���� ����Ʈ, App, �ַ�� �۾�</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>Ŀ��ŧ��</h5>
							<table class="table_col_type1">
								<caption>Smart UX Design Planning Ŀ��ŧ��</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:70%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">������</th>
										<th scope="col">��������</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">UX Design�̶�?</th>
										<td>
											<dl>
												<dt>UX �������̶�?</dt>
												<dd>1)	���ø����̼� ������ Ư¡</dd>
												<dd>2)	����� ���� �������� �Ϲ����� ���μ��� ����</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>�� ����(4~5��)</td>
									</tr>
									<tr>
										<th scope="row">App����ġ(Case Study)</th>
										<td>
											<dl>
												<dt>Case Study��?</dt>
												<dd>1) �� �� ��� �ִ� ���� ����</dd>
												<dd>2) �� �� ������ �´� App����ġ</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>Step1������ �´� App����ġ ��ǥ �ڷḦ �����Ѵ�.</td>
									</tr>
									<tr>
										<th scope="row">App����ġ (Case Study)</th>
										<td>
											<dl>
												<dt>App����ġ ��ǥ</dt>
												<dd>1) �� �� App ����ġ ��ǥ </dd>
												<dd>2) ������ �´� ����� üũ �� ����</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>App ����ġ ��ǥ �� ������ �´� ����� üũ(�ٸ� �� ���̵� ��� ���)</td>
									</tr>
									<tr>
										<th scope="row">�극�� �����(Brainstorming)</th>
										<td>
											<dl>
												<dt>BrainStorming�̶�</dt>
												<dd>1) �ൿ���� ����</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>Step2 �ൿ������ �����Ѵ�.</td>
									</tr>
									<tr>
										<th scope="row">�ൿ����(behavior pattern)</th>
										<td>
											<dl>
												<dt>Behavior pattern ��?</dt>
												<dd>1) �ൿ���� �׷� ��</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>App����ġ �� ����, ������ �´� ���̵�� ������ ���� ������� �ൿ ������ ������ ����.</td>
									</tr>
									<tr>
										<th scope="row">����� ���� �з�</th>
										<td>
											<dl>
												<dt>����� ���� �з���?</dt>
												<dd>1)	�ൿ���� �׷��� ���ʷ� ���� �з�</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>Step3 ����� ���� �з� �ڷḦ �����Ѵ�.</td>
									</tr>
									<tr>
										<th scope="row">�ۼҳ� ����(Persona)</th>
										<td>
											<dl>
												<dt>Persona��?</dt>
												<dd>1) ����� ���� ��ǥ</dd>
												<dd>2) �ۼҳ� �����ϱ�</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>����� ������ ���� �ۼҳ��� �����Ѵ�. (������ ������ ���κ� �۾�)</td>
									</tr>
									<tr>
										<th scope="row">�ۼҳ� ����(Persona)</th>
										<td>
											<dl>
												<dt>Persona ����</dt>
												<dd>1)	���κ� �۾� �� ���� �� �ۼҳ� ����</dd>
												<dd>2)	�ۼҳ� ���� �۾�</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>Step4 �ۼҳ��� ������ ���� ��ǥ �ۼҳ��� �����Ѵ�.</td>
									</tr>
									<tr>
										<th scope="row">�߰� ��ǥ</th>
										<td>
											<dl>
												<dt>�߰� ����� ��ǥ �� ���</dt>
												<dd>1) �� ������ Step4������ ������ ��ǥ�Ѵ�.</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">��������(Concept)</th>
										<td>
											<dl>
												<dt>���� ���� �̶�?</dt>
												<dd>1) ���� �����ϱ�</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>�ۼҳ��� ���� ����� �ൿ�� Ư���� �´� ������ �����Ѵ�.</td>
									</tr>
									<tr>
										<th scope="row">������ �κ��丮(Content inventory)</th>
										<td>
											<dl>
												<dt>������ �κ��丮 ��?</dt>
												<dd>1)	������ �κ��丮 ����</dd>
												<dd>2)	������ �κ��丮 �� ����Ʈ ��(�������)</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>Step5 ������ �ʿ��� �������κ��丮�� �����Ѵ�.</td>
									</tr>
									<tr>
										<th scope="row">�÷ο���Ʈ(Flow Chart)</th>
										<td>
											<dl>
												<dt>�÷ο���Ʈ ����</dt>
												<dd>1)	�ó������� ����</dd>
												<dd>2)	�ۼҳ� ���� �۾�</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>������ ������ �κ��丮�� ������� �帧���� �����.</td>
									</tr>
									<tr>
										<th scope="row">�ó���������(Scenario)</th>
										<td>
											<dl>
												<dt>�ó�������?</dt>
												<dd>1) ������ �κ��丮 ��ǥ</dd>
												<dd>2) �ó����� �����</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>Step6 �÷ο���Ʈ ������� �ó������� �����Ѵ�.</td>
									</tr>
									<tr>
										<th scope="row">���̾�������(Wire Frame)</th>
										<td>
											<dl>
												<dt>���̾� ������ ?</dt>
												<dd>1) �ó����� ��ǥ</dd>
												<dd>2) ���̾������Ӱ� ������Ÿ���� ���� �ʿ伺</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>���̾������� �׸���</td>
									</tr>
									<tr>
										<th scope="row">������Ÿ�� ����(Prototype)</th>
										<td>
											<dl>
												<dt>������ ������Ÿ�� ����</dt>
												<dd>1)	���� ��ǥAppȭ�� ������ ������Ÿ�� ����</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>Step7 ������ ������Ÿ���� �����Ͽ� �����Ѵ�. (7�� ���� �غ�->������ ������Ÿ��)</td>
									</tr>
									<tr>
										<th scope="row">����� �׽�Ʈ(User Test)</th>
										<td>
											<dl>
												<dt>����� �׽�Ʈ��?</dt>
												<dd>1) ����� �׽�Ʈ�� ���� �� Task �����</dd>
												<dd>2) Task ���� ��, �� ���� �����</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>����� �׽�Ʈ�� ���� Task �� �׽�Ʈ ��, �� ���� �����</td>
									</tr>
									<tr>
										<th scope="row">����� �׽�Ʈ(User Test)</th>
										<td>
											<dl>
												<dt>����� �׽�Ʈ ����</dt>
												<dd>1)	���� �ٸ� ���� Appȭ���� �׽�Ʈ �غ���.</dd>
												<dd>2)	���������� ���� �����Ѵ�.</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>Step8 ���ø����̼��� ���ΰ� ��ǥȭ���� �������Ѵ�.</td>
									</tr>
									<tr>
										<th scope="row">��ǥ</th>
										<td>
											<dl>
												<dt>����� ��ǥ �� ���</dt>
												<dd>1) �� ������ Step8������ ������ ��ǥ�Ѵ�.</dd>
											</dl>
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