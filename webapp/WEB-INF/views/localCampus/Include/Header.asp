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
				<h1><img src="/localCampus/Images/Common/h1_header.png" alt="������ ������ �ǰ�, ���ᰡ ������ �Ǵ� ����1% �������� ����� ��Ʈ����"></h1>
				<div id="GNB_Wrap">
					<ul class="gnb">
						<li><a href="/localCampus" title="Ȩ">Ȩ</a></li>
						<%	if TRIM(session("userid")) ="" OR isEmpty(TRIM(session("userid")))	then	%>
						<li><a href="/localCampus/Member/login.asp" title="�α���">�α���</a></li>
						<li><a href="/localCampus/Member/IPIN/Join_Step1.asp" title="ȸ������">ȸ������</a></li>
						<li><a href="#this" title="ID/PW ã��">ID/PW ã��</a></li>
						<% else %>
						<li><a href="/localCampus/Member/logout.asp" title="�α׾ƿ�">�α׾ƿ�</a></li>
						<li><a href="/localCampus/Register/register_result.asp" title="��������">��������</a></li>
						<li><a href="/localCampus/Register/card_approval.asp" title="��������">�����ϱ�</a></li>
						<li class="last"><a href="/localCampus/Member/member_modify.asp" title="������������">������������</a></li>
						<% end if %>
						
					</ul>
				</div>
				<h2><a href="/localCampus"><img src="/localCampus/Images/Common/h2_logo_header.png" alt="���� 1% ������ �缺�� ���� ���� ��Ʈ���� ����ķ�۽�"></a></h2>
				<nav id="LNB_Wrap">
					<ul class="lnb">
						<li><a href="/localCampus/Content/localCampus_info.asp" title="���к�Ʈ�ȳ�">���к�Ʈ�ȳ�</a></li>
						<li><a href="/localCampus/Content/asanCampus.asp" title="�ƻ�ķ�۽�">�ƻ�ķ�۽�</a></li>
						<li><a href="/localCampus/Content/gunpoCampus.asp" title="����ķ�۽�">����ķ�۽�</a></li>
						<li><a href="/localCampus/Content/daejeonCampus.asp" title="����ķ�۽�">����ķ�۽�</a></li>
						<li class="last"><a href="/localCampus/Content/busanCampus.asp" title="�λ�ķ�۽�">�λ�ķ�۽�</a></li>
					</ul>
					<ul class="lnb_mob">
						<li class="delete"><img src="/localCampus/Images/Common/btn_delete_blue.png" alt="�޴� �ݱ�"></li>
						<li class="tit">��ü�޴�</li>
						<li><a href="#this" title="���к�Ʈ�ȳ�">���к�Ʈ�ȳ�</a></li>
						<li><a href="/localCampus/Content/asanCampus.asp" title="�ƻ�ķ�۽�">�ƻ�ķ�۽�</a></li>
						<li><a href="/localCampus/Content/gunpoCampus.asp" title="����ķ�۽�">����ķ�۽�</a></li>
						<li><a href="/localCampus/Content/daejeonCampus.asp" title="����ķ�۽�">����ķ�۽�</a></li>
						<li class="last"><a href="/localCampus/Content/busanCampus.asp" title="�λ�ķ�۽�">�λ�ķ�۽�</a></li>
						<li class="telNum_mob">02-3486-1422</li>
					</ul>
				</nav>
				<a class="btnLnb"><img src="/localCampus/Images/Common/btn_lnb.png" alt="�޴� ��ư"></a>
				<a class="telNum"><img src="/localCampus/Images/Common/btn_telNumber.png" alt="02-3486-1422"></a>				
			</div>
		</div>