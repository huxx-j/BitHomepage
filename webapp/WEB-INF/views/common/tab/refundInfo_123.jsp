<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="con_wrap refund_con">
	<div class="ico_direction_up"></div>
	<a href="#this" class="delete_gray"></a>
	<h5>재직자 교육비지원 안내</h5>
	<div class="tap_header">
		<ul class="tapMenu">
			<li class="on"><a href="#this" title="근로자직무능력향상지원" onClick="javascript:ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');">근로자직무능력향상지원</a></li>
			<li ><a href="#this" title="사업주위탁훈련" onClick="javascript:ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');">사업주위탁훈련</a></li>
			<!--<li><a href="#this" title="비트출신 무료교육" onClick="javascript:ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_03.asp');">비트출신 무료교육</a></li>-->
			<!--<li><a href="#this" title="바우처" onClick="javascript:ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_04.asp');">바우처</a></li>-->
		</ul>
	</div>
	<div id="TabCon" class="tap_content courseInfo bor_none">

	</div>
</div>