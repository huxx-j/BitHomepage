<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<!-- MODULE : ����û��� ���� -->
<div class="con_wrap1709">
	<script type="text/javascript">
		$(window).bind("pageshow", function() {
			$("#inputCounselName").val("");
			$("#inputCounselPhone").val("");
		});
	
		function requestCounsel() {
			var name;
			var phone;
			name = $("#inputCounselName").val();
			phone = $("#inputCounselPhone").val();
			
			var check = $("input:checkbox[id='agreeCounsel']").is(":checked");
			if(name.length<1) {
				alert("�̸��� �Է����ּ���.");
				return;
			}
			else if(phone.length<1) {
				alert("����ó�� �Է����ּ���.");
				return;
			}
			else if(check==false) { 
				alert("�̿����� �����ϼž� �մϴ�."); 
				return; 
			}
			$("#formRequestCounsel").submit();
		}
	</script>

	<form id="formRequestCounsel" class="mar_t30" method="post" action="/Include/Common_RequestCounselComplete.asp">
		<img src="/Images/requestCounselTop720px.png"/>
		<div class="mar_l30" style="text-align:center;">
			<input type="hidden" name="counselCourseID" size="20" value="<%=CourseID%>"/>
			<div class="fl mar_l30">
				�̸� <input type="text" id="inputCounselName" name="counselName" size="10" style="height:30px; font-size:20px;"/>
			</div>
			<div class="fl mar_l30">
				����ó <input type="text" id="inputCounselPhone" name="counselPhone" size="25" style="height:30px; font-size:20px;"/>
			</div>
			<div style="clear:both;"></div>
		</div>
		<div class="c mar_t20">
			<input type="checkbox" id="agreeCounsel"><label for="agreeCounsel">�̿����� �����մϴ�.</label>
			<a href="javascript:window.open('/Member/IPIN/AgreementSegment.asp')" title="�̿��� ����" style="font-size:16px;" class="btnBlueBorder">�̿��� ����</a>
		</div>
		
		<img src="/Images/requestCounselBottom720px.png" usemap="#counselMap"/>
		<map name="counselMap">
			<area shape="rect" coords="163,23,552,70" onclick="requestCounsel()">
		</map>
		
	</form>
</div>
<!--// MODULE : ����û��� �� -->
