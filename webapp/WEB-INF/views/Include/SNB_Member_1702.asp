<!--#include file="Common_CSS_SNB.inc"-->
<style>
	div.banner_wrap {
		display:none;
	}
	div#Content_Wrap {
		margin-top:10px;
	}
	.moveTop {
		left:1px;
	}
</style>

<nav id="SNB_Wrap_1702">
	<h3>멤버 </h3>
	<ul class="snb_1702"></li>
		<%	if TRIM(session("userid")) ="" OR isEmpty(TRIM(session("userid")))	then	%>
		<li><a href="/Member/login.asp" class="newdepth1">로그인</a></li>
		<li><a href="/Member/IPIN/Join_step1.asp" class="newdepth1">회원가입</a></li>
		<%	else	%>
		<li><a href="/Member/Member_modify.asp" class="newdepth1">개인정보수정</a></li>
		<li><a href="javascript:mem_del();" class="newdepth1">탈퇴하기</a></li>
		<%	end if	%>

		<li><a href="/Member/id_pass_search_01.asp" class="newdepth1">아이디/패스워드 찾기</a></li>
		<li><a href="/Member/notice_list.asp" class="newdepth1">공지사항</a></li>
		<li><a href="/Member/location.asp" class="newdepth1">찾아오시는길</a></li>
		<li><a href="/Member/siteMap.asp" class="newdepth1">사이트맵</a></li>
		<li class="last"><a href="/Member/policy.asp" class="newdepth1">개인정보취급방침</a></li>
	</ul>
	<!--<a href="http://bitacademy.com/Support/Support_cacaoView.asp" target="_blank"><img src="/Images/Common/KakaoTalk4SNB_1704.png" style="margin-left:-1px; width:194px;"/></a>-->
</nav>
