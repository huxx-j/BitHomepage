		<!--#include virtual="/include/config.asp"-->
		<!--#include virtual="/include/list_function.asp"-->

		<%
		Response.AddHeader "Pragma", "no-cache"
		Response.AddHeader "cache-control", "no-store"
		Response.Expires = -1

		Set Dbcon = Server.CreateObject("ADODB.Connection")
		Dbcon.Open Con_bit_db
		%>
		
		<div id="Header_Wrap">
			<div id="Header">
				<h1><img src="/localCampus/Images/Common/h1_header.png" alt="입학이 긍지가 되고, 수료가 날개가 되는 상위1% 전문가를 만드는 비트스쿨"></h1>
				<div id="GNB_Wrap">
					<ul class="gnb">
						<li><a href="/localCampus" title="홈">홈</a></li>
						<%	if TRIM(session("userid")) ="" OR isEmpty(TRIM(session("userid")))	then	%>
						<li><a href="/localCampus/Member/login.asp" title="로그인">로그인</a></li>
						<li><a href="/localCampus/Member/IPIN/Join_Step1.asp" title="회원가입">회원가입</a></li>
						<li><a href="#this" title="ID/PW 찾기">ID/PW 찾기</a></li>
						<% else %>
						<li><a href="/localCampus/Member/logout.asp" title="로그아웃">로그아웃</a></li>
						<li><a href="/localCampus/Register/register_result.asp" title="지원내역">지원내역</a></li>
						<li><a href="/localCampus/Register/card_approval.asp" title="지원내역">결제하기</a></li>
						<li class="last"><a href="/localCampus/Member/member_modify.asp" title="개인정보수정">개인정보수정</a></li>
						<% end if %>
						
					</ul>
				</div>
				<h2><a href="/localCampus"><img src="/localCampus/Images/Common/h2_logo_header.png" alt="상위 1% 전문가 양성을 위한 교육 비트스쿨 지방캠퍼스"></a></h2>
				<nav id="LNB_Wrap">
					<ul class="lnb">
						<li><a href="/localCampus/Content/localCampus_info.asp" title="대학비트안내">대학비트안내</a></li>
						<li><a href="/localCampus/Content/asanCampus.asp" title="아산캠퍼스">아산캠퍼스</a></li>
						<li><a href="/localCampus/Content/gunpoCampus.asp" title="군포캠퍼스">군포캠퍼스</a></li>
						<li><a href="/localCampus/Content/daejeonCampus.asp" title="대전캠퍼스">대전캠퍼스</a></li>
						<li class="last"><a href="/localCampus/Content/busanCampus.asp" title="부산캠퍼스">부산캠퍼스</a></li>
					</ul>
					<ul class="lnb_mob">
						<li class="delete"><img src="/localCampus/Images/Common/btn_delete_blue.png" alt="메뉴 닫기"></li>
						<li class="tit">전체메뉴</li>
						<li><a href="#this" title="대학비트안내">대학비트안내</a></li>
						<li><a href="/localCampus/Content/asanCampus.asp" title="아산캠퍼스">아산캠퍼스</a></li>
						<li><a href="/localCampus/Content/gunpoCampus.asp" title="군포캠퍼스">군포캠퍼스</a></li>
						<li><a href="/localCampus/Content/daejeonCampus.asp" title="대전캠퍼스">대전캠퍼스</a></li>
						<li class="last"><a href="/localCampus/Content/busanCampus.asp" title="부산캠퍼스">부산캠퍼스</a></li>
						<li class="telNum_mob">02-3486-1422</li>
					</ul>
				</nav>
				<a class="btnLnb"><img src="/localCampus/Images/Common/btn_lnb.png" alt="메뉴 버튼"></a>
				<a class="telNum"><img src="/localCampus/Images/Common/btn_telNumber.png" alt="02-3486-1422"></a>				
			</div>
		</div>