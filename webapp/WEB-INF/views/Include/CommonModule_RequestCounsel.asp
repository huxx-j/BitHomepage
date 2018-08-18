<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<!-- MODULE : 상담신청모듈 시작 -->
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
				alert("이름을 입력해주세요.");
				return;
			}
			else if(phone.length<1) {
				alert("연락처를 입력해주세요.");
				return;
			}
			else if(check==false) { 
				alert("이용약관에 동의하셔야 합니다."); 
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
				이름 <input type="text" id="inputCounselName" name="counselName" size="10" style="height:30px; font-size:20px;"/>
			</div>
			<div class="fl mar_l30">
				연락처 <input type="text" id="inputCounselPhone" name="counselPhone" size="25" style="height:30px; font-size:20px;"/>
			</div>
			<div style="clear:both;"></div>
		</div>
		<div class="c mar_t20">
			<input type="checkbox" id="agreeCounsel"><label for="agreeCounsel">이용약관에 동의합니다.</label>
			<a href="javascript:window.open('/Member/IPIN/AgreementSegment.asp')" title="이용약관 보기" style="font-size:16px;" class="btnBlueBorder">이용약관 보기</a>
		</div>
		
		<img src="/Images/requestCounselBottom720px.png" usemap="#counselMap"/>
		<map name="counselMap">
			<area shape="rect" coords="163,23,552,70" onclick="requestCounsel()">
		</map>
		
	</form>
</div>
<!--// MODULE : 상담신청모듈 끝 -->
