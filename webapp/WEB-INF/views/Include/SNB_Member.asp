<script>
<!--
	function mem_del()
	{
		if(confirm( "비트교육센터 회원 탈퇴 하시겠습니까?\n비트교육센터 회원으로 등록된 정보를 삭제합니다." ))
		{
		location.href="member_del.asp";
		}
	}
//-->
</script>	
<nav id="SNB_Wrap">
					<h3>멤버 <span>Member </span></h3>
					<ul class="snb"></li>
						<%	if TRIM(session("userid")) ="" OR isEmpty(TRIM(session("userid")))	then	%>
						<li><a href="/Member/login.asp" class="depth1">로그인</a></li>
						<li><a href="/Member/IPIN/Join_step1.asp" class="depth1">회원가입</a></li>
						<%	else	%>
						<li><a href="/Member/Member_modify.asp" class="depth1">개인정보수정</a></li>
						<li><a href="javascript:mem_del();" class="depth1">탈퇴하기</a></li>
						<%	end if	%>

						<li><a href="/Member/id_pass_search_01.asp" class="depth1">아이디/패스워드 찾기</a></li>
						<li><a href="/Member/notice_list.asp" class="depth1">공지사항</a></li>
						<li><a href="/Member/location.asp" class="depth1">찾아오시는길</a></li>
						<li><a href="/Member/siteMap.asp" class="depth1">사이트맵</a></li>
						<li class="last"><a href="/Member/policy.asp" class="depth1">개인정보취급방침</a></li>
					</ul>
					<a href="/Support/Support_cacaoView.asp"><img src="/Images/Content/img_snb_cacaoInfo.jpg" alt="비트교육센터에서 카카오톡 계정을 만들었습니다. 친구추가해주세요~. 카카오톡ID : 비트교육센터 - QR코드로도 친구추가 가능 합니다."></a>
				</nav>