<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->

<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 

return_url = "/register/test_result.asp"

if TRIM(session("userid")) = "" OR isEmpty(TRIM(session("userid"))) OR isNULL(TRIM(session("userid"))) then
	call alertMsgGoURL ("�α��� ������ �����ϴ�. \n�ٽ� �α����� �ּ���.", "/localCampus/Member/login.asp?return_url=/register/test_result.asp")
end if

Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db

'���������� �������� �ҷ�����
SQL = "Select Name1,Name2 From IDTable Where IDType='��������'"
Set Rs = Dbcon.Execute(SQL)
	ChkProgress=false
		if not Rs.EOF then
			if left(date,10) >= trim(Rs("Name1")) and left(date,10) <= trim(Rs("Name2")) then 
			ChkProgress=true
			end if
		end if

Rs.close
Set Rs = Nothing
'esponse.write "ChkProgress:"&ChkProgress&"<br>"

%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<!--<meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0">-->
<meta http-equiv="X-UA-Compatible" content="IE=8">

<!-- #include virtual = "/localCampus/Include/contentStyle.asp" -->
<!-- #include virtual = "/localCampus/Include/Script.asp" -->
<!--#include virtual="/localCampus/Register/register_core_script.asp"-->
<script language="javascript">
<!--
function del(str) {  
     if (confirm("���������� �����մϱ�?") == 1) {          
             location.href="/localCampus/Register/register_result_cancel.asp?idx=" + str;
 	 }
}
function mod(atype, SelectDateTime, idx) {  
	if (atype==1)
	{
		location.href="/register/register_employment.asp?selectdate="+SelectDateTime+"&idx=" + idx;
	}
	else if (atype==2)
	{
		location.href="/register/register_expert1.asp?selectdate="+SelectDateTime+"&idx=" + idx;
	}
	else if (atype==3)
	{
		location.href="/register/register_kukka.asp?selectdate="+SelectDateTime+"&idx=" + idx;
	}
	else
	{
		alert('�ٽ� Ȯ���� �ּ���.');
	}
             
}
function kangwon_del(str) {  
     if (confirm("���������� �����մϱ�?") == 1) {          
             location.href="/register/register_kangwon6_cancel.asp?idx=" + str;
 	 }
}
//-->
</script>
</head>
<body onLoad="AppForm.select1.value='<%=UCase(code)%>';" onLoad="cngSelectDay('<%=UCase(code)%>');">
<form name="AppForm" method="POST" action="/localCampus/Register/register_core_Insert.asp">
<div id="Wrapper">
	<!-- SkipMenu -->
	<!-- #include virtual = "/localCampus/Include/skipMenu.asp"-->
	<!-- //SkipMenu -->

	<!-- Header_Wrap -->
	<!-- #include virtual = "/localCampus/Include/Header.asp"-->
	<!-- //Header_Wrap -->
	<div id="Container">
		<div id="Content" class="sub register">
			<h3>�������</h3>
			<section class="section mar_t40">
				<div class="section_header">
					<h4 class="fl">��Ʈ���� �������� ��������</h4>
				</div>
				<div class="form_type1 bor_solid_top10_green">
					<table border="1" class="table_col_type1" summary="��Ʈ���� �������� �������� - ��������, �����Ͻ�, ��������, ��������, ��������, �������, ���������ǰ�, �������, ��������">
						<caption>Table - ��Ʈ���� �������� ��������</caption>
						<colgroup>
							<col width="20%">
							<col width="*">
						</colgroup>
						<thead>
							<th scope="col">��������</th>
							<th scope="col">�����Ͻ�</th>
							<th scope="col">��������</th>
							<th scope="col">��������</th>
							<th scope="col">��������</th>
							<th scope="col">�������</th>
							<th scope="col">���������ǰ�</th>
							<th scope="col">�������</th>
							<th scope="col">��������</th>
						</thead>
						<tbody>
							<%
								SQL = " SELECT   Application.AppliKind, Application.ApplicationDate, Application.CourseID, Application.SelectDateTime, "
								SQL = SQL & "                Course.CourseName, Application.SelectSubject, Application.SelectScore, "
								SQL = SQL & "                Application.SelectResult, Application.IntervOpinion, Application.YearMonth, "
								SQL = SQL & "                Application.idx "
								SQL = SQL & "FROM      Course INNER JOIN "
								SQL = SQL & "                Application ON Course.CourseID = Application.CourseID "
								SQL = SQL & "WHERE   (Application.StudID = '" & TRIM(session("studid")) & "') AND (Application.YearMonth <= '" &Date & "') "
								SQL = SQL & "ORDER BY Application.ApplicationDate DESC "
								Set Rs = Dbcon.Execute(SQL)
								'response.write "SQL:"&SQL&"<br>"
								if Rs.EOF then
							%>
							<tr>
								<td colspan="9" class="c">�����Ͻ� ������ ���� ���� �ʽ��ϴ�.</td>
							</tr>
							<%
								else					
								end if
								Do until Rs.EOF
								idx=Rs("idx")
							%>
							<tr>
								<td><%=LEFT(TRIM(Rs("Applicationdate")), 10)%></td>
								<td><%=TRIM(Rs("Selectdatetime"))%></td>
								<td><%=TRIM(Rs("coursename"))%></td>
								<td><%if left(TRIM(Rs("CourseID")), 6) = "2006_V" then%>����Ư�� <%else%><%=TRIM(Rs("AppliKind"))%><%end if%></td>
								<td><%=TRIM(Rs("selectsubject"))%></td>
								<%if ChkProgress=true and left(SelectDateTime,7) = left(date,7) then %>
								<td>������</td>
								<%else %>
								<td><%=TRIM(Rs("SelectResult"))%></td>
								<%end if%>
								<td><%=TRIM(Rs("intervopinion"))%></td>
								<%if TRIM(Rs("SelectResult")) = "������"   then %>
								<!-- ���������� -->
								<td><a href="#this" title="����������" onclick="del('<%=idx%>')" class="btn sml green1">����������</a></td>
								<!-- //���������� -->
								<%Else %>
								<td></td>
								<%End If %>
								 <%if Len(TRIM(Rs("CourseID"))) >3 AND TRIM(Rs("SelectResult")) = "������" AND TRIM(Rs("AppliKind")) = "�����Ź" And CDate(Left(TRIM(Rs("SelectDateTime")), 10))>CDate(date)   then %>
								<td><a href="#this" onclick="mod(1, '<%=TRIM(Rs("SelectDateTime"))%>', '<%=TRIM(Rs("idx"))%>');"></td>
								<%elseif Len(TRIM(Rs("CourseID"))) <4 AND TRIM(Rs("SelectResult")) = "������" AND TRIM(Rs("AppliKind")) = "������" And CDate(Left(TRIM(Rs("SelectDateTime")), 10))>CDate(date)   then %>
								<td><a href="#this" onclick="mod(2, '<%=TRIM(Rs("SelectDateTime"))%>', '<%=TRIM(Rs("idx"))%>');"></td>
								<%elseif Len(TRIM(Rs("CourseID"))) >3 AND TRIM(Rs("SelectResult")) = "������" AND TRIM(Rs("AppliKind")) = "�����Ⱓ" And CDate(Left(TRIM(Rs("SelectDateTime")), 10))>CDate(date)   then %>
								<td><a href="#this" onclick="mod(3, '<%=TRIM(Rs("SelectDateTime"))%>', '<%=TRIM(Rs("idx"))%>');"></td>
								<%else %>
								<td></td>
								<%end if%>  
							</tr>
							<%				
								Rs.Movenext
								Loop

								Rs.close
								Set Rs = Nothing
							%>
						</tbody>
					</table>
				</div>
				<div class="btn_wrap c mar_t30">
					<a href="/localCampus/Register/register.asp" class="btn mid green1">�����ϱ�</a></a>
				</div>
			</section>
		</div>
	</div>
	<!-- Footer_Wrap -->
	<!-- #include virtual = "/localCampus/Include/Footer.asp"-->
	<!-- //Footer_Wrap -->
</div>
</form>
</body>
</html>