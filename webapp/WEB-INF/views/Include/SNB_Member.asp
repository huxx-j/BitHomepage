<script>
<!--
	function mem_del()
	{
		if(confirm( "��Ʈ�������� ȸ�� Ż�� �Ͻðڽ��ϱ�?\n��Ʈ�������� ȸ������ ��ϵ� ������ �����մϴ�." ))
		{
		location.href="member_del.asp";
		}
	}
//-->
</script>	
<nav id="SNB_Wrap">
					<h3>��� <span>Member </span></h3>
					<ul class="snb"></li>
						<%	if TRIM(session("userid")) ="" OR isEmpty(TRIM(session("userid")))	then	%>
						<li><a href="/Member/login.asp" class="depth1">�α���</a></li>
						<li><a href="/Member/IPIN/Join_step1.asp" class="depth1">ȸ������</a></li>
						<%	else	%>
						<li><a href="/Member/Member_modify.asp" class="depth1">������������</a></li>
						<li><a href="javascript:mem_del();" class="depth1">Ż���ϱ�</a></li>
						<%	end if	%>

						<li><a href="/Member/id_pass_search_01.asp" class="depth1">���̵�/�н����� ã��</a></li>
						<li><a href="/Member/notice_list.asp" class="depth1">��������</a></li>
						<li><a href="/Member/location.asp" class="depth1">ã�ƿ��ô±�</a></li>
						<li><a href="/Member/siteMap.asp" class="depth1">����Ʈ��</a></li>
						<li class="last"><a href="/Member/policy.asp" class="depth1">����������޹�ħ</a></li>
					</ul>
					<a href="/Support/Support_cacaoView.asp"><img src="/Images/Content/img_snb_cacaoInfo.jpg" alt="��Ʈ�������Ϳ��� īī���� ������ ��������ϴ�. ģ���߰����ּ���~. īī����ID : ��Ʈ�������� - QR�ڵ�ε� ģ���߰� ���� �մϴ�."></a>
				</nav>