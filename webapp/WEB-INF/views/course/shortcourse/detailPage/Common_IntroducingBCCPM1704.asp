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
	.divCompany {
		width:90px; 
		margin:4px 3px 3px 3px;
		padding:5px;
		text-align:center;
		border:1px solid #afafaf;
		font-weight:900;
		font-size:9pt;
	} 
	.divCompany div {
		height:46px;
	}
</style>

<!-- con_wrap -->
<div class="con_wrap1703 last">
	<h5>BCCPM (BIT Certified C Programming Master) �ڰ���</h5>
	<p>
		BCCPM�� �̷�â�����кΰ� �����ϰ� ��Ʈ�� ������ C ���α׷��� ������ �ΰ��ڰ��� �Դϴ�.<br/>
		BCCPM �ڰ��� �����ڴ� C ���α׷��� Ȱ���� ������ ������ �ɷ��� ���߾����� �����մϴ�.<br/>
		�� �ڰ��� �����ڴ� �������Ӹ� �ƴ϶� �Ի缭�� �������� ä���� �Ǵ� �������� �޽��ϴ�.
	</p>
	
	<table class="table_col_type1" style="width:100%;">
		<colgroup>
			<col style="width:25%">
			<col style="width:75%">
		</colgroup>
		<tbody>
			<tr>
				<th>�ڰ�����</th>
				<td>C���α׷��� ������<br/>BCCPM (BIT Certified C Programming Master)</td>
			</tr>
			<tr>
				<th>�򰡹��</th>
				<td>�ʱ���� (�ְ���, 15����)</td>
			</tr>
			<tr>
				<th>��������</th>
				<td>
					C ���<br/>
					�ڷᱸ��/�˰���
				</td>
			</tr>
			<tr>
				<th>�հݱ���</th>
				<td>��� 60�� �̻�</td>
			</tr>
			<tr>
				<th>�ڰ��� ��ȿ�Ⱓ</th>
				<td>�ڰ��� ����Ϸκ��� 5��</td>
			</tr>
			<tr>
				<th>�������</th>
				<td>��Ʈ��ǻ�� ��Ʈ�������� 4�� �׽�Ʈ���� (������ 5���ⱸ 5�� �̳�)</td>
			</tr>
		</tbody>
	</table>
	<!--<a href="/Course/License/Course_Licenses.asp" target="_blank" style="float:right;" class="btn sml blue"> �ڰ��� ���� �ڼ��� ����</a>-->
	
	<div style="clear:both;"></div>
	
	<h5>��������</h5>
	<table class="table_col_type1 tableSchedule">
		<tr>
			<td>1�� 3��</td>
			<td>2�� 2��</td>
			<td>3�� 3��</td>
			<td>4�� 29��</td>
			<td>5�� 27��</td>
			<td>6�� 24��</td>
		</tr>
		<tr>
			<td>7�� 29��</td>
			<td>8�� 26��</td>
			<td>9�� 30��</td>
			<td>10�� 28��</td>
			<td>11�� 25��</td>
			<td>12�� 30��</td>
		</tr>
	</table>
	
	<h5>����ð�</h5>
	<p>���� 10��</p>
	
	<h5>�ڰ��� ����</h5>
	<div style="width:240px; float:left; margin-right:4px;">
		<a href="/Images/Content/img_BIT_LICENSE_C_PROGRAMMING_MASTER.jpg"><img src="/Images/Content/img_BIT_LICENSE_C_PROGRAMMING_MASTER.jpg" width="240"/></a>
	</div> 
	<div style="width:240px; float:left; ">
		<a href="/Images/Content/img_BIT_LICENSE_JAVA_PROGRAMMING_MASTER.jpg"><img src="/Images/Content/img_BIT_LICENSE_JAVA_PROGRAMMING_MASTER.jpg" width="240"/></a>
	</div>
	<div style="clear:both;"></div>
	
	<h5>������</h5>
	<!-- BSPM Slider -->
	<!--#include virtual="/Course/License/Common_LicenseCompanies.inc" -->
	
	<div id="gallerot1" class="gallerot-container" style="width:720px; height:110px; LINE-HEIGHT:24PX;">
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
			width: 720,
			height: 90,
			slidingSpeed: 2000,
			enableAutoSliding: true,
			autoSlidingDelay: 2000,
			stopAutoSlidingOnHover: true
		});
	</script>
	<!-- //BSPM Slider -->
	
</div>
<!-- con_wrap -->
