<%
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
'// 인터넷배너광고 트래킹 :: 이엠스타 관련. (2018-03-YG)
'// 종전 : <script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
%>

<!-- Mobon Tracker v3.1 [공용] start -->
<script type="text/javascript">
<!--
	function mobRf(){
  		var rf = new EN();
		//rf.setSSL(true);
  		rf.sendRf();
	}
  //-->
</script>
<script src="https://cdn.megadata.co.kr/js/enliple_min2.js" defer="defer" onload="mobRf()"></script>
<!-- Mobon Tracker v3.1 [공용] end -->
