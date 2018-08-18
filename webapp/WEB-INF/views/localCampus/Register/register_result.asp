<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->

<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 

return_url = "/register/test_result.asp"

if TRIM(session("userid")) = "" OR isEmpty(TRIM(session("userid"))) OR isNULL(TRIM(session("userid"))) then
	call alertMsgGoURL ("로그인 정보가 없습니다. \n다시 로그인해 주세요.", "/localCampus/Member/login.asp?return_url=/register/test_result.asp")
end if

Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db

'전문가과정 전형일자 불러오기
SQL = "Select Name1,Name2 From IDTable Where IDType='전형일자'"
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
     if (confirm("지원내용을 삭제합니까?") == 1) {          
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
		alert('다시 확인해 주세요.');
	}
             
}
function kangwon_del(str) {  
     if (confirm("지원내용을 삭제합니까?") == 1) {          
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
			<h3>전형결과</h3>
			<section class="section mar_t40">
				<div class="section_header">
					<h4 class="fl">비트스쿨 교육과정 지원내역</h4>
				</div>
				<div class="form_type1 bor_solid_top10_green">
					<table border="1" class="table_col_type1" summary="비트스쿨 교육과정 지원내역 - 지원일자, 전형일시, 지원과정, 지원종류, 전형과목, 전형결과, 면접위원의견, 지원취소, 지원수정">
						<caption>Table - 비트스쿨 교육과정 지원내역</caption>
						<colgroup>
							<col width="20%">
							<col width="*">
						</colgroup>
						<thead>
							<th scope="col">지원일자</th>
							<th scope="col">전형일시</th>
							<th scope="col">지원과정</th>
							<th scope="col">지원종류</th>
							<th scope="col">전형과목</th>
							<th scope="col">전형결과</th>
							<th scope="col">면접위원의견</th>
							<th scope="col">지원취소</th>
							<th scope="col">지원수정</th>
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
								<td colspan="9" class="c">지원하신 과목이 존재 하지 않습니다.</td>
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
								<td><%if left(TRIM(Rs("CourseID")), 6) = "2006_V" then%>방학특강 <%else%><%=TRIM(Rs("AppliKind"))%><%end if%></td>
								<td><%=TRIM(Rs("selectsubject"))%></td>
								<%if ChkProgress=true and left(SelectDateTime,7) = left(date,7) then %>
								<td>진행중</td>
								<%else %>
								<td><%=TRIM(Rs("SelectResult"))%></td>
								<%end if%>
								<td><%=TRIM(Rs("intervopinion"))%></td>
								<%if TRIM(Rs("SelectResult")) = "미전형"   then %>
								<!-- 지원서삭제 -->
								<td><a href="#this" title="지원서삭제" onclick="del('<%=idx%>')" class="btn sml green1">지원서삭제</a></td>
								<!-- //지원서삭제 -->
								<%Else %>
								<td></td>
								<%End If %>
								 <%if Len(TRIM(Rs("CourseID"))) >3 AND TRIM(Rs("SelectResult")) = "미전형" AND TRIM(Rs("AppliKind")) = "기업위탁" And CDate(Left(TRIM(Rs("SelectDateTime")), 10))>CDate(date)   then %>
								<td><a href="#this" onclick="mod(1, '<%=TRIM(Rs("SelectDateTime"))%>', '<%=TRIM(Rs("idx"))%>');"></td>
								<%elseif Len(TRIM(Rs("CourseID"))) <4 AND TRIM(Rs("SelectResult")) = "미전형" AND TRIM(Rs("AppliKind")) = "전문가" And CDate(Left(TRIM(Rs("SelectDateTime")), 10))>CDate(date)   then %>
								<td><a href="#this" onclick="mod(2, '<%=TRIM(Rs("SelectDateTime"))%>', '<%=TRIM(Rs("idx"))%>');"></td>
								<%elseif Len(TRIM(Rs("CourseID"))) >3 AND TRIM(Rs("SelectResult")) = "미전형" AND TRIM(Rs("AppliKind")) = "국가기간" And CDate(Left(TRIM(Rs("SelectDateTime")), 10))>CDate(date)   then %>
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
					<a href="/localCampus/Register/register.asp" class="btn mid green1">지원하기</a></a>
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