<%
Response.CharSet = "euc-kr"
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "Expires", "0"
%>

<link rel="stylesheet" href="/JS/main/gallerot.css"/>
<script src="/JS/main/jquery.gallerot.js"></script>

<style>
	.myTable2 tbody tr th {
		background:#fffae9;
	}
	.myHyperlink {
		text-decoration: underline;
		color: #0000FF;
		cursor:pointer;
	}
	#gallerot1 div.divCompany {
		
	} 
	.divCompany {
		width:90px; 
		margin:4px 3px 3px 3px;
		padding:5px;
		text-align:center;
		border:1px solid #afafaf;
		box-shadow:1px 1px 3px #dfdfdf;
		font-weight:900;
		font-size:9pt;
		
	} 
	.divCompany div {
		height:46px;
	}
</style>

<!-- con_wrap -->
<div class="con_wrap last">
	<h5>C���α׷��� ������ �ڰ��� ���� �ȳ�</h5>
	<p>
		BSPM(BIT Software Programming Master)�� �ڰݱ⺻�� �� 17�� ��2�׿� ���� �ֹ���ó�� �̷�â�����кο� ����ϰ� �ѱ������ɷ°��߿����� ������ �ΰ��ڰ����Դϴ�.<br/>
		�� ��Ʈ�� BSPM �ڰ����� ������ �ڴ� ������ ������ Language ���α׷��� �Ƿ��� ���߾���, ���� ���α׷����� ������ �� �ִ� �������� ������ �� �ֽ��ϴ�.. ����� �־� �� �ڰ����� ������ �ڸ� ���� ��� �� �������� �����ϴ� ������ �����ϰ� �ֽ��ϴ�..
	</p>
	
	<!-- BSPM Slider -->
	<!--#include virtual="/Course/License/Common_LicenseCompanies.inc" -->
	
	<div id="gallerot1" class="gallerot-container" style="width:1100px; height:110px;">
		<ul>
		<%
			For i=0 To countCompany-1 Step 1
				Response.Write "<li>"
				Response.Write "<div class='divCompany' style='" & strCompanies(i,4) & "'>"
				Response.Write "<div style=' " & strCompanies(i,5) & "'><a href='" & strCompanies(i,0) & "' target='_blank'><img src='" & strCompanies(i,1) & "' style='" & strCompanies(i,2) & "'/></a></div>" & strCompanies(i,3)
				Response.Write "</div>"
				Response.Write "</li>"
			Next
		%>
		</ul>
	</div>
	<div style="clear:both;"></div>
	<a href="/Course/License/Course_Licenses.asp" target="_blank" class="btn sml blue" style="margin-bottom:15px;"> ������(�� <%=countCompany%>�� ���) ��ü����</a>
	<script>
		$('#gallerot1').gallerot({
			width: 1100,
			height: 90,
			slidingSpeed: 2000,
			enableAutoSliding: true,
			autoSlidingDelay: 2000,
			stopAutoSlidingOnHover: true
		});
	</script>
	<!-- //BSPM Slider -->
	
	<table class="table_col_type1 myTable2" style="width:70%; margin-left:2%;">
		<colgroup>
			<col style="width:35%">
			<col style="width:65%">
		</colgroup>
		<tbody>
			<tr>
				<th>�ڰ��� ��Ī</th>
				<td>C���α׷��� ������ / BCCPM(BIT Certified C Programming Master)</td>
			</tr>
			<tr>
				<th>���</th>
				<td>����</td>
			</tr>
			<tr>
				<th>�򰡹�� �� ����ð�</th>
				<td>�ʱ� - �ְ��� 20���� / 1�ð� 30��</td>
			</tr>
			<tr>
				<th>��������(�о� �Ǵ� ����)</th>
				<td>
					1.	C Language<br/>
					2.	��ⱸ��<br/>
					3.	�ڷᱸ�� �� �˰���
				</td>
			</tr>
			<tr>
				<th>�հݱ���</th>
				<td>����� 40�� �̻�, ��� 60�� �̻�</td>
			</tr>
			<tr>
				<th>���÷�</th>
				<td>10,000��</td>
			</tr>
			<tr>
				<th>�ڰ��� ��ȿ�Ⱓ</th>
				<td>�ڰ��� ����Ϸκ��� 5��</td>
			</tr>
			<tr>
				<th>�������</th>
				<td>��Ʈ�������� 4�� �׽�Ʈ����</td>
			</tr>
		</tbody>
	</table>
	<a href="/Course/License/Course_Licenses.asp" target="_blank" style="float:right;" class="btn sml blue"> �ڰ��� ���� �ڼ��� ����</a>
	<div style="clear:both;"></div>
	
</div>
<!-- con_wrap -->
