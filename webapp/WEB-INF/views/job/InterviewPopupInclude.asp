<!DOCTYPE html>

<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->

<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
Response.AddHeader "Pragma","no-cache"
Response.AddHeader "cache-control", "no-staff"
Response.Expires  = -1

Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>
<%
	Dim StrInterviewManner			' 면접관태도
	Dim StrInterviewDescription		' 면접내용
	Dim StrInterviewOpinion			' 느낀점
	Dim StrCompReputation			' 회사평가
	
	Dim StrCompName					' 회사명
	Dim StrEstablishYear			' 설립년도
	Dim StrBusiness					' 주력사업
	Dim StrAddress					' 주소
	Dim StrHomePage					' 홈페이지
	Dim StrYearSell					' 연매출액 + "억"
	Dim StrStaffNum					' 직원수 + "명"
	Dim StrUpdateDate					' 갱신일자
%>

<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<!--<meta charset="euc-kr">-->
	
	
	<%
		' << retrieving values from the dbo.Interview >>
'response.write "111<br/>"
'response.end
		
		Num = request.querystring("Num") 				'// Num : 면접후기 글 번호.
		'response.write(Num & "<br/>")
	%>
	<%
		sql = "select * from db_bit.dbo.InterviewHitCount where Num=" & Num
'response.write sql & "<br/>"		
'response.end		
		set Rs = Dbcon.execute(sql)
		
		IF Rs.EOF THEN
			'// 처음 조회당하는(조회수=0) 글번호인 경우.
			sql = "INSERT INTO db_bit.dbo.InterviewHitCount (Num, HitCount) VALUES (" & Num & ",1)"
			Dbcon.execute(sql)
		ELSE
			'// 이미 조회당해본(조회수>0) 글번호인 경우.
			hitCount = Cint(Rs("HitCount"))
			sql = "UPDATE db_bit.dbo.InterviewHitCount SET HitCount=" & (hitCount+1) & " WHERE Num=" & Num
'response.write sql
'response.end
			Set Rs2 = Dbcon.execute(sql)
			Set Rs2 = nothing
		END IF
		
		Rs.close
		Set Rs = Nothing
	
	%>
	<%
		sql = "select * from db_bit.dbo.Interview where Num=" & Num
		'response.write(sql)
		'response.end
		
		set rs = Dbcon.execute(sql)
		
		IF NOT rs.EOF THEN
			StrInterviewManner = rs("InterviewManner")
			StrInterviewDescription = rs("InterviewDescription")
			StrInterviewOpinion = rs("InterviewOpinion")
			StrCompReputation = rs("CompReputation")
			
			StrInterviewManner = Replace(StrInterviewManner, """", "&quot;")
			StrInterviewDescription = Replace(StrInterviewDescription, """", "&quot;")
			StrInterviewOpinion = Replace(StrInterviewOpinion, """", "&quot;")
			StrCompReputation = Replace(StrCompReputation, """", "&quot;")
			
			StrCompName = rs("CompName")
			StrEstablishYear = rs("EstablishYear")
			StrBusiness = rs("Business")
			StrAddress = rs("Address")
			StrHomePage = rs("HomePage")
			StrYearSell = rs("YearSell")
			StrStaffNum = rs("StaffNum")
			StrUpdateDate = rs("UpdateDate")
			
		END IF
		
	%>
	
	<script>
		$(document).ready(function() {
			showUpInterviewContents();
			
			/* NOT Working PROPERLY. 2016-11-21-YG
			$("#divContent1, #divContent2").bind("mousewheel", function(e) {
				// tell the browser we're handling this event
				e.preventDefault();
				e.stopPropagation();

			});
			*/
		});
		
		function showUpInterviewContents() {
			var strPre = '<div style="margin-top:30px; margin-bottom:5px; padding:5px; font-size:13pt; color:#8b6338; background-color:#fbfbec;">';
			var strMid = '</div><p style="font-size:11pt; color:#4f4f4f; line-height:15pt;">';
			var strPost = '</p>';

			//var strSubject = '<div style="padding:10px; font-size:15pt; font-weight:900; border:1px solid #d7d7d7;">' + $('.Subject').eq(i).val() + '</div>';
			var str1 = strPre + '면접 내용' + strMid + $('.Str1').eq(0).val() + strPost;
			var str2 = strPre + '면접관 태도' + strMid + $('.Str2').eq(0).val() + strPost;
			var str3 = strPre + '느낀점' + strMid + $('.Str3').eq(0).val() + strPost;
			var str4 = strPre + '회사 평가' + strMid + $('.Str4').eq(0).val() + strPost;
			
			//$('#myBox1').html(str1 + str2 + str3 + str4);
			$('#divContent2').html(str1 + str2 + str3 + str4);

			
		}
	</script>
</head>
<body>
	<form name="form2" style="height:10px;">  <!-- to share between ASP and JS -->
		<input type="hidden" class="Str1" value="<%=replace(strInterviewDescription, chr(13), "<br/>")%>"/>
		<input type="hidden" class="Str2" value="<%=replace(strInterviewManner, chr(13), "<br/>")%>" />
		<input type="hidden" class="Str3" value="<%=replace(strInterviewOpinion, chr(13), "<br/>")%>" />
		<input type="hidden" class="Str4" value="<%=replace(strCompReputation, chr(13), "<br/>")%>" />
		
	</form>
	
	<%
		sql2 = "SELECT * FROM db_bit.dbo.InterviewImageLogoPath WHERE CompName like '%"&rs("CompName")&"%'"
		Set Rs2 = Dbcon.Execute(sql2)
		
		if Rs2.eof = false then
			ImagePath = Rs2("ImageLogoPath")
			HomepageURL = Rs2("HomepageURL")
		else
			ImagePath = ""
			HomepageURL = ""
		end if
		Rs2.Close
	%>
	<div id="divContent1" style="margin-bottom:10px;">
		<div style="float:left;"><h2> <img src="<%=ImagePath%>" style="max-width:175px; max-height:39px;"/><span class="blueTxt" style="font-size:1.6em;"><%=strCompName %> </span> 면접후기</h2></div>
		<div style="float:right; font-weight:900; font-size:1.25em;"><a id="aClose1" href="#"><span class="redTxt">[닫기]</span></a></div>
		<div style="clear:both;"></div>
		<div style="float:right; margin-right:10px; font-size:0.8em; "><a href="<%=HomepageURL%>" target="_blank"><u><span style="color:#8f8f8f;"><%=HomepageURL%></span></u></a></div>
		<div style="clear:both;"></div>
	</div>
	
	<div id="divContent2" style="margin-bottom:10px;">
	</div>
	

</body>	

<%
	rs.close
	Set rs = Nothing
	
	Dbcon.close
	Set Dbcon = Nothing
%>
