<!--#include file="Common_CSS_SNB_1709.inc"-->
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
	#SNB_Wrap_1709 { 
		background:#ffffff !important; 
		width:188px !important; 
	}
</style>

<style>
	#Content_Wrap { border:none !important; }
</style>

<script>
<!--
	function mem_del()
	{
		//if(confirm( "��Ʈ�������� ȸ�� Ż�� �Ͻðڽ��ϱ�? \n ��Ʈ�������� ȸ������ ��ϵ� ������ �����մϴ�." ))
		if(confirm( '��Ʈ�������Ϳ� ��ϵ� ȸ������ ������ �����մϴ�. \n������ ȸ��Ż�� �Ͻðڽ��ϱ�? (<%=session("userid")%>)' ))
		{
			location.href="/Member/member_del.asp";
		}
	}
//-->
</script>	

<nav id="SNB_Wrap_1709">
	<h3 style="line-height:62px;">���</h3>
	<ul class="snb_1709">
		<style>
			.dnone {
				DISPLAY:NONE !important;
			}
		</style>

		<%	if TRIM(session("userid")) ="" OR isEmpty(TRIM(session("userid")))	then	%>
		<li><a href="/Member/login.asp" class="newdepth1">�α���</a></li>
		<li><a href="/Member/IPIN/Join_step1.asp" class="newdepth1">ȸ������</a></li>
		<%	else	%>
		<li><a href="/Member/Member_modify.asp" class="newdepth1">������������</a></li>
		<li><a href="javascript:mem_del();" class="newdepth1">Ż���ϱ�</a></li>
		<%	end if	%>

		<li><a href="/Member/id_pass_search_01.asp" class="newdepth1">���̵�/�н����� ã��</a></li>
		<!--<li><a href="/Member/notice_list.asp" class="newdepth1">��������</a></li>-->
		<!--<li><a href="/Member/siteMap.asp" class="newdepth1">����Ʈ��</a></li>-->
		<li><a href="/Member/policy.asp" class="newdepth1">��������ó����ħ</a></li>
	</ul>
</nav>
