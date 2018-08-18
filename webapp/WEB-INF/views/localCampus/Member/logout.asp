<%@ Language=VBScript %>

<%
response.expires = 0
Session.Abandon
response.redirect "/localCampus"
%>