<%
function ReplaceTag2Text(str)
if TRIM(str) <> "" THEN
   Dim text
      text = replace(str, "&", "&")
      text = replace(text, "<", "<")
      text = replace(text, ">", ">")
'	  text = replace(text, "'", "''")


      ReplaceTag2Text = text
END IF
End Function


'*********************************************************
'* # FUNCTION NAME : 리스트 페이징
'* # MODIFICATIONS :
'*********************************************************

'======센터 공지사항 리스트  페이징=====================================================================================================================
'==============================================================================================================================================
Sub gotoPageHTML1(page, Pagecount)
   Dim blockpage, i
  
   blockpage=Int((page-1)/10)*10+1

   '********** 이전 10 개 구문 시작 **********
   if blockPage = 1 Then
      Response.Write ""
	     
   Else
'      Response.Write"<a href='/Beta/Member/notice_list.asp?gotopage=" & blockPage-10 & "' class='listfont'>[이전 10개]</a> "
   End If
  
   '********** 이전 10 개 구문 끝**********
   
      
   
   if int(gotopage) > 1 then 
   %>
            <a href="/Beta/Member/notice_list.asp?gotopage=<%=gotopage-1%>" class="listfont_btn"> &lt;&lt; </a>
         <% else %>
			<span <%=gotopage-1%>" class="listfont_btn"> &lt;&lt; </span>
         <% end if %>
<%
   i=1
   Do Until i > 10 or blockpage > Pagecount
      If blockpage=int(page) Then
         Response.Write  "<a href='/Beta/Member/notice_list.asp?gotopage=" & blockpage & "' class='listfont_btn on'>" & blockpage & "</a>"
      Else 
		if i=Pagecount then
			Response.Write"<a href='/Beta/Member/notice_list.asp?gotopage=" & blockpage & "' class='listfont_btn'>" & blockpage & "</a>"
		else			
			Response.Write"<a href='/Beta/Member/notice_list.asp?gotopage=" & blockpage & "' class='listfont_btn'>" & blockpage & "</a>"
		end if
         
      End If

      blockpage=blockpage+1
      i = i + 1
   Loop
%>
<%   
   if int(gotopage) < int(pagecount) then 
%>
          <a href="/Beta/Member/notice_list.asp?gotopage=<%=gotopage+1%>" class="listfont_btn"> &gt;&gt; </a>
          <%else%> 
           <span <%=gotopage+1%>" class="listfont_btn"> &gt;&gt; </span>
         <%end if%>
<%
   '********** 다음 10 개 구문 시작**********
   
   if blockpage > Pagecount Then
     Response.Write ""
	     
   Else 
'      Response.write"<a href='/Beta/Member/notice_list.asp?gotopage=" & blockpage & "' class='listfont'>[다음 10개]</a>"
   End If

   '********** 다음 10 개 구문 끝**********
End Sub	 



'======교육센터 뉴스==========================================================================================================
'=====================================================================================================================================
Sub gotoPageHTML2(page, Pagecount)
   Dim blockpage, i
  
   blockpage=Int((page-1)/10)*10+1

   '********** 이전 10 개 구문 시작 **********
   if blockPage = 1 Then
      Response.Write ""
	     
   Else
'      Response.Write"<a href='/Beta/Member/notice_list.asp?gotopage=" & blockPage-10 & "' class='listfont'>[이전 10개]</a> "
   End If
  
   '********** 이전 10 개 구문 끝**********
   
      
   
   if int(gotopage) > 1 then 
   %>
            <a href="/Beta/Member/bit_news_list.asp?gotopage=<%=gotopage-1%>" class="listfont_btn"> &lt;&lt; </a>
         <% else %>
			<a href="/Beta/Member/bit_news_list.asp?gotopage=<%=gotopage-1%>" class="listfont_btn"> &lt;&lt; </a>
         <% end if %>
<%
   i=1
   Do Until i > 10 or blockpage > Pagecount
      If blockpage=int(page) Then
         Response.Write "&nbsp;<strong><font color='#000000'>" & blockpage & "</font></strong>&nbsp;|"
      Else 
		if i=Pagecount then
			Response.Write"&nbsp;<a href='/Beta/Member/bit_news_list.asp?gotopage=" & blockpage & "' class='listfont_btn'>" & blockpage & "</a>"
		elseif i=10 then
			Response.Write"&nbsp;<a href='/Beta/Member/bit_news_list.asp?gotopage=" & blockpage & "' class='listfont_btn'>" & blockpage & "</a>"
		else			
			Response.Write"&nbsp;<a href='/Beta/Member/bit_news_list.asp?gotopage=" & blockpage & "' class='listfont_btn'>" & blockpage & "</a> |"
		end if
         
      End If

      blockpage=blockpage+1
      i = i + 1
   Loop
%>
<%   
   if int(gotopage) < int(pagecount) then 
%>
           <a href="/Beta/Member/notice_list.asp?gotopage=<%=gotopage+1%>" class="listfont_btn"> &gt;&gt; </a>
          <%else%> 
           <a href="/Beta/Member/notice_list.asp?gotopage=<%=gotopage+1%>" class="listfont_btn"> &gt;&gt; </a>
         <%end if%>
<%
   '********** 다음 10 개 구문 시작**********
   
   if blockpage > Pagecount Then
     Response.Write ""
	     
   Else 
'      Response.write"<a href='/Beta/Member/notice_list.asp?gotopage=" & blockpage & "' class='listfont'>[다음 10개]</a>"
   End If

   '********** 다음 10 개 구문 끝**********
End Sub	 


'======비트 스토리==========================================================================================================
'=====================================================================================================================================
Sub gotoPageHTML4(page, Pagecount)
   Dim blockpage, i
  
   blockpage=Int((page-1)/10)*10+1

   '********** 이전 10 개 구문 시작 **********
   if blockPage = 1 Then
      Response.Write ""
	     
   Else
'      Response.Write"<a href='/Beta/Member/notice_list.asp?gotopage=" & blockPage-10 & "' class='listfont'>[이전 10개]</a> "
   End If
  
   '********** 이전 10 개 구문 끝**********
   
      
   
   if int(gotopage) > 1 then 
   %>
            <a href="/Beta/Member/bit_story_list.asp?gotopage=<%=gotopage-1%>" class="listfont_btn"><img src="/image/member/prev.gif" width="35" height="7" border="0"></a>&nbsp;&nbsp;
         <% else %>
				<img src="/image/member/prev.gif" width="35" height="7" border="0">&nbsp;&nbsp;
         <% end if %>
<%
   i=1
   Do Until i > 10 or blockpage > Pagecount
      If blockpage=int(page) Then
         Response.Write "&nbsp;<strong><font color='#000000'>" & blockpage & "</font></strong>&nbsp;"
      Else 
		if i=Pagecount then
			Response.Write"&nbsp;<a href='/Beta/Member/bit_story_list.asp?gotopage=" & blockpage & "' class='listfont_btn'>" & blockpage & "</a>"
		elseif i=10 then
			Response.Write"&nbsp;<a href='/Beta/Member/bit_story_list.asp?gotopage=" & blockpage & "' class='listfont_btn'>" & blockpage & "</a>"
		else			
			Response.Write"&nbsp;<a href='/Beta/Member/bit_story_list.asp?gotopage=" & blockpage & "' class='listfont_btn'>" & blockpage & "</a>"
		end if
         
      End If

      blockpage=blockpage+1
      i = i + 1
   Loop
%>
<%   
   if int(gotopage) < int(pagecount) then 
%>
            <a href="/Beta/Member/bit_story_list.asp?gotopage=<%=gotopage+1%>" class="listfont_btn">
			<img src="/image/member/next.gif" width="35" height="7" border="0" align="absmiddle"></a>
          <%else%> 
           &nbsp;&nbsp;<img src="/image/member/next.gif" width="35" height="7" border="0" align="absmiddle">
         <%end if%>
<%
   '********** 다음 10 개 구문 시작**********
   
   if blockpage > Pagecount Then
     Response.Write ""
	     
   Else 
'      Response.write"<a href='/Beta/Member/notice_list.asp?gotopage=" & blockpage & "' class='listfont'>[다음 10개]</a>"
   End If

   '********** 다음 10 개 구문 끝**********
End Sub	 




'======온라인 상담========================================================================================
'=======================================================================================================================================
Sub gotoPageHTML3(page, Pagecount)
   Dim blockpage, i
  
   blockpage=Int((page-1)/10)*10+1

   '********** 이전 10 개 구문 시작 **********
   if blockPage = 1 Then
      Response.Write ""
	     
   Else
'      Response.Write"<a href='/etc/online_list.asp?gotopage=" & blockPage-10 & "&field="&field&"&field_value="&field_value&"' class='dotum11_black_L'>[이전 10개]</a> "
	  Response.Write ""
   End If
  
   '********** 이전 10 개 구문 끝**********
   
      
   
   if int(gotopage) > 1 then 
   %>
            <a href="/Support/Support_online_list.asp?gotopage=<%=gotopage-1%>&field=<%=field%>&field_value=<%=field_value%>" class="listfont_btn">&lt;&lt;</a>
         <% else %>
				<!--<span class="listfont_btn">&lt;&lt;</span>-->
				<a class="listfont_btn">&lt;&lt;</a>
         <% end if %>
<%
   i=1
   Do Until i > 10 or blockpage > Pagecount
      If blockpage=int(page) Then
         Response.Write " <a class='listfont_btn bg_green'>" & blockpage & "</a>&nbsp;"
      Else 
         Response.Write"<a href='/Support/Support_online_list.asp?gotopage=" & blockpage & "&field="&field&"&field_value="&field_value&"' class='listfont_btn'>" & blockpage & "</a> "
      End If

      blockpage=blockpage+1
      i = i + 1
   Loop
%>
<%   
   if int(gotopage) < int(pagecount) then 
%>
            <a href="/Support/Support_online_list.asp?gotopage=<%=gotopage+1%>&field=<%=field%>&field_value=<%=field_value%>" class="listfont_btn">&gt;&gt;</a>
          <%else%> 
            &gt;&gt;
         <%end if%>
<%
   '********** 다음 10 개 구문 시작**********
   
   if blockpage > Pagecount Then
     Response.Write ""
	     
   Else 
'      Response.write"<a href='/etc/online_list.asp?gotopage=" & blockpage & "&field="&field&"&field_value="&field_value&"' class='dotum11_black_L'>[다음 10개]</a>"
	  Response.Write ""
   End If

   '********** 다음 10 개 구문 끝**********
End Sub	 


'======온라인 상담(ver.3456 : 2015/12/30 by YG -- 링크를 조회수 볼 수 있는 Support_online_list3456.asp으로 연결)========================
'=======================================================================================================================================
Sub gotoPageHTML3_3456(page, Pagecount)
   Dim blockpage, i
  
   blockpage=Int((page-1)/10)*10+1

   '********** 이전 10 개 구문 시작 **********
   if blockPage = 1 Then
      Response.Write ""
	     
   Else
'      Response.Write"<a href='/etc/online_list.asp?gotopage=" & blockPage-10 & "&field="&field&"&field_value="&field_value&"' class='dotum11_black_L'>[이전 10개]</a> "
	  Response.Write ""
   End If
  
   '********** 이전 10 개 구문 끝**********
   
      
   
   if int(gotopage) > 1 then 
   %>
            <a href="/Support/Support_online_list3456.asp?gotopage=<%=gotopage-1%>&field=<%=field%>&field_value=<%=field_value%>" class="listfont_btn">&lt;&lt;</a>
         <% else %>
				<span class="listfont_btn">&lt;&lt;</span>
         <% end if %>
<%
   i=1
   Do Until i > 10 or blockpage > Pagecount
      If blockpage=int(page) Then
         Response.Write " <a class='listfont_btn bg_green'>" & blockpage & "</a>&nbsp;"
      Else 
         Response.Write"<a href='/Support/Support_online_list3456.asp?gotopage=" & blockpage & "&field="&field&"&field_value="&field_value&"' class='listfont_btn'>" & blockpage & "</a> "
      End If

      blockpage=blockpage+1
      i = i + 1
   Loop
%>
<%   
   if int(gotopage) < int(pagecount) then 
%>
            <a href="/Support/Support_online_list3456.asp?gotopage=<%=gotopage+1%>&field=<%=field%>&field_value=<%=field_value%>" class="listfont_btn">&gt;&gt;</a>
          <%else%> 
            &gt;&gt;
         <%end if%>
<%
   '********** 다음 10 개 구문 시작**********
   
   if blockpage > Pagecount Then
     Response.Write ""
	     
   Else 
'      Response.write"<a href='/etc/online_list.asp?gotopage=" & blockpage & "&field="&field&"&field_value="&field_value&"' class='dotum11_black_L'>[다음 10개]</a>"
	  Response.Write ""
   End If

   '********** 다음 10 개 구문 끝**********
End Sub	 




'======세미나 리스트========================================================================================
'=======================================================================================================================================
Sub gotoPageHTML4(page, Pagecount)
   Dim blockpage, i
  
   blockpage=Int((page-1)/10)*10+1

   '********** 이전 10 개 구문 시작 **********
   if blockPage = 1 Then
      Response.Write ""
	     
   Else
'      Response.Write"<a href='/etc/semina_list.asp?gotopage=" & blockPage-10 & "&field="&field&"&field_value="&field_value&"' class='dotum11_black_L'>[이전 10개]</a> "
	  Response.Write ""
   End If
  
   '********** 이전 10 개 구문 끝**********
   
      
   
   if int(gotopage) > 1 then 
   %>
            <a href="/etc/semina_list.asp?gotopage=<%=gotopage-1%>&field=<%=field%>&field_value=<%=field_value%>" class="listfont">[이전]</a>
         <% else %>
				[이전]
         <% end if %>
<%
   i=1
   Do Until i > 10 or blockpage > Pagecount
      If blockpage=int(page) Then
         Response.Write " <font size=2 color= red>" & blockpage & "</font>&nbsp;"
      Else 
         Response.Write"<a href='/etc/semina_list.asp?gotopage=" & blockpage & "&field="&field&"&field_value="&field_value&"' class='dotum11_black_L'>" & blockpage & "</a> "
      End If

      blockpage=blockpage+1
      i = i + 1
   Loop
%>
<%   
   if int(gotopage) < int(pagecount) then 
%>
            <a href="/etc/semina_list.asp?gotopage=<%=gotopage+1%>&field=<%=field%>&field_value=<%=field_value%>" class="listfont">[다음]</a>
          <%else%> 
            [다음]
         <%end if%>
<%
   '********** 다음 10 개 구문 시작**********
   
   if blockpage > Pagecount Then
     Response.Write ""
	     
   Else 
'      Response.write"<a href='/etc/semina_list.asp?gotopage=" & blockpage & "&field="&field&"&field_value="&field_value&"' class='dotum11_black_L'>[다음 10개]</a>"
	  Response.Write ""
   End If

   '********** 다음 10 개 구문 끝**********
End Sub



%>

<%
'======커뮤니티 - 비트나눔장터 (2016/4/19 by YG)========================================================================================
'=======================================================================================================================================
Sub gotoPageHTML5(page, Pagecount)
   Dim blockpage, i
  
   blockpage=Int((page-1)/10)*10+1

   '********** 이전 10 개 구문 시작 **********
   if blockPage = 1 Then
      Response.Write ""
	     
   Else
	  Response.Write ""
   End If
  
   '********** 이전 10 개 구문 끝**********
   
   if int(gotopage) > 1 then 
   %>
		<a href="/Community/Used.asp?gotopage=<%=gotopage-1%>&field=<%=field%>&field_value=<%=field_value%>" class="listfont_btn">&lt;&lt;</a>
<% else %>
			<span class="listfont_btn">&lt;&lt;</span>
<% end if %>

<%
   i=1
   Do Until i > 10 or blockpage > Pagecount
      If blockpage=int(page) Then
         Response.Write " <a class='listfont_btn bg_green'>" & blockpage & "</a>&nbsp;"
      Else 
         Response.Write"<a href='/Community/Used.asp?gotopage=" & blockpage & "&field="&field&"&field_value="&field_value&"' class='listfont_btn'>" & blockpage & "</a> "
      End If

      blockpage=blockpage+1
      i = i + 1
   Loop
%>
<%   
   if int(gotopage) < int(pagecount) then 
%>
		<a href="/Community/Used.asp?gotopage=<%=gotopage+1%>&field=<%=field%>&field_value=<%=field_value%>" class="listfont_btn">&gt;&gt;</a>
<% else %> 
		<span class="listfont_btn">&gt;&gt;</span>
<% end if %>

<%
   '********** 다음 10 개 구문 시작**********
   
   if blockpage > Pagecount Then
     Response.Write ""
	     
   Else 
	  Response.Write ""
   End If

   '********** 다음 10 개 구문 끝**********
End Sub	 
%>



