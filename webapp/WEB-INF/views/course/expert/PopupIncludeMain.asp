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
	Dim BPnum			
	Dim x1(17)
	Dim y1(17)
	Dim x2(17)
	Dim y2(17)
	Dim TermNum(17)		
	Dim GroupNum(17)	
	
	Dim Subject(17)
	Dim Str1(17)
	Dim Str2(17)
	Dim Str3(17)
	Dim Str4(17)
	Dim Str5(17)
	Dim StrEtc(17)	
	
%>

<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<!--<meta charset="euc-kr">-->
	
	
	<%
		' << retrieving values from the dbo.projectbp2pamphlet >>
		
		BPnum = request.querystring("bpnum")
		
		sql = "select * from db_bit.dbo.projectbp2pamphlet where BitProjectNum=" & BPnum
		'response.write(sql)
		
		set rs = Dbcon.execute(sql)
		'response.write(rs("x1"))
		
		index = 0 	' 0 ~ 16
		do while rs.eof = false
			x1(index) = rs("x1")
			y1(index) = rs("y1")
			x2(index) = rs("x2")
			y2(index) = rs("y2")
			termnum(index) = rs("termnum")
			groupnum(index) = rs("groupnum")		
			
			' << retrieving values from the dbo.projectbp2pamphlet >>
			sql = "SELECT * FROM db_bit.dbo.ProjectPamphlet WHERE TermNum = " & termnum(index) & " AND GroupNum = " & groupnum(index)
			
			set rs2 = Dbcon.execute(sql)
			
			Subject(index) = rs2("Subject")
			Str1(index) = rs2("str1")
			Str2(index) = rs2("str2")
			Str3(index) = rs2("str3")
			Str4(index) = rs2("str4")
			Str5(index) = rs2("str5")
			StrEtc(index) = rs2("strEtc")

		index = index + 1
			rs.movenext
		loop
		
	%>
	
	<%
	
	
	%>
	
	<script>
		$(document).ready(function() {
			//alert( $(".x1").eq(0).val());
			
		});
	</script>
</head>
<body>
	<form name="form2" style="height:10px;">  <!-- to share between ASP and JS -->
		<input type="hidden" class="BitProjectNum" name="hidden_BitProjectNum" value="<%=BPnum%>">

		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(0)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(1)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(2)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(3)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(4)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(5)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(6)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(7)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(8)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(9)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(10)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(11)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(12)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(13)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(14)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(15)%>"> 
		<input type="hidden" class="x1" name="hidden_x1" value="<%=x1(16)%>"> 
		
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(0)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(1)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(2)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(3)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(4)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(5)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(6)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(7)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(8)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(9)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(10)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(11)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(12)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(13)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(14)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(15)%>"> 
		<input type="hidden" class="y1" name="hidden_y1" value="<%=y1(16)%>"> 
		
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(0)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(1)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(2)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(3)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(4)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(5)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(6)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(7)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(8)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(9)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(10)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(11)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(12)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(13)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(14)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(15)%>"> 
		<input type="hidden" class="x2" name="hidden_x2" value="<%=x2(16)%>"> 
		
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(0)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(1)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(2)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(3)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(4)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(5)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(6)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(7)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(8)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(9)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(10)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(11)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(12)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(13)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(14)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(15)%>"> 
		<input type="hidden" class="y2" name="hidden_y2" value="<%=y2(16)%>"> 
		
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(0)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(1)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(2)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(3)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(4)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(5)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(6)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(7)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(8)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(9)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(10)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(11)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(12)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(13)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(14)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(15)%>"> 
		<input type="hidden" class="TermNum" name="hidden_TermNum" value="<%=termnum(16)%>"> 
		
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(0)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(1)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(2)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(3)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(4)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(5)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(6)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(7)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(8)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(9)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(10)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(11)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(12)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(13)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(14)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(15)%>"> 
		<input type="hidden" class="GroupNum" name="hidden_GroupNum" value="<%=groupnum(16)%>"> 
		
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(0)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(1)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(2)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(3)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(4)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(5)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(6)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(7)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(8)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(9)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(10)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(11)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(12)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(13)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(14)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(15)%>">
		<input type="hidden" class="Subject" name="hidden_Subject" value="<%=Subject(16)%>">
				
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(0)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(1)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(2)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(3)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(4)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(5)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(6)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(7)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(8)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(9)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(10)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(11)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(12)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(13)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(14)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(15)%>">
		<input type="hidden" class="Str1" name="hidden_Str1" value="<%=Str1(16)%>">
		
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(0)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(1)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(2)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(3)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(4)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(5)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(6)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(7)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(8)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(9)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(10)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(11)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(12)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(13)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(14)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(15)%>">
		<input type="hidden" class="Str2" name="hidden_Str2" value="<%=Str2(16)%>">
		
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(0)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(1)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(2)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(3)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(4)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(5)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(6)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(7)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(8)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(9)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(10)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(11)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(12)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(13)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(14)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(15)%>">
		<input type="hidden" class="Str3" name="hidden_Str3" value="<%=Str3(16)%>">
		
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(0)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(1)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(2)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(3)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(4)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(5)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(6)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(7)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(8)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(9)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(10)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(11)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(12)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(13)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(14)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(15)%>">
		<input type="hidden" class="Str4" name="hidden_Str4" value="<%=Str4(16)%>">
		
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(0)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(1)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(2)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(3)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(4)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(5)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(6)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(7)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(8)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(9)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(10)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(11)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(12)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(13)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(14)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(15)%>">
		<input type="hidden" class="Str5" name="hidden_Str5" value="<%=Str5(16)%>">
		
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(0)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(1)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(2)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(3)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(4)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(5)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(6)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(7)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(8)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(9)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(10)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(11)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(12)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(13)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(14)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(15)%>">
		<input type="hidden" class="StrEtc" name="hidden_StrEtc" value="<%=StrEtc(16)%>">
	</form>
		
	<div style="margin-bottom:10px;">
		<div style="float:left;"><h2>비트프로젝트 <%=BPnum%>호</h2></div>
		<div style="float:left; margin-left:560px;"><a id="aClose1" href="#">[닫기]</a></div>
	</div>
	<div style="clear:both;"></div>

	<img id="myCoverFront125" src="/Images/BITproject/BITproject_cover_front_<%=BPnum%>.jpg" style="width:600px; border:1px solid #373737;"/><br/>
	
</body>	

<%
	rs.close
	Set rs = Nothing
	
	Dbcon.close
	Set Dbcon = Nothing
%>
