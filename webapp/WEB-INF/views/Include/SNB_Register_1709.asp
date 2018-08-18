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
	function openApply() {
		//$(".banner").animate( {"opacity":"0.01", "height":"0px"}, 150, "swing");
		$(".banner").animate( {"opacity":"0.01", "height":"0px"}, 500);
		$(".banner").removeClass("mar_t20");
	}
</script>
<nav id="SNB_Wrap_1709">
	<h3 style="line-height:62px;">수강신청</h3>
	<ul class="snb_1709">
		<li>
			<a href="#this" onclick="javascript:openApply();" class="newdepth1">신규지원</a>
			<ul class="newdepth2_wrap no1" style="height:351px;">
				<!--<li><a href="/Register/Request/register_shortCourse.asp" class="newdepth2">단기핵심과정</a></li>-->
				<li class="long"><a href="/Register/Request/register_shortCourse.asp" class="newdepth2">단기핵심과정/겨울방학특강</a></li>
				<li><a href="/Register/Request/register_localCampus.asp" class="newdepth2">비트캠퍼스</a></li>
				<li><a href="/Register/Request/register_expert1.asp" class="newdepth2">전문가과정</a></li>
				<li><a href="/Register/Request/register_industry40_1.asp" class="newdepth2">4차산업선도인력양성</a></li>
				<li><a href="/Register/Request/register_coursePresentation.asp" class="newdepth2">4차산업교육설명회</a></li>
				<li><a href="/Register/Request/register_kukka1.asp" class="newdepth2">국가기간전략산업직종</a></li>
				<li><a href="/Register/Request/register_employment1.asp" class="newdepth2">신입사원채용교육</a></li>
				<li><a href="/Register/Request/register_chung1.asp" class="newdepth2">청년취업아카데미</a></li>
				<li><a href="/Register/Request/register_license1.asp" class="newdepth2">BSPM(비트SW프로그래밍 자격증)</a></li>
			</ul>
		</li>
		<li>
			<a href="/Register/register_requestResult.asp" class="newdepth1">지원결과</a>
		</li>
		<li>
			<a href="/Register/register_paymentStep.asp" class="newdepth1">결제절차</a>
		</li>
		<li>
			<!--<a href="/Register/card_approval.asp" class="newdepth1">카드결제</a>-->
			<a href="/Register/card_approvalv2.asp" class="newdepth1">카드결제</a>
		</li>
		<li>
			<a href="/Register/register_depositCheck.asp" class="newdepth1">입금확인</a>
		</li>
		<li>
			<a href="/Member/member_modify.asp" class="newdepth1">개인정보수정</a>
		</li>
	</ul>

	<div class="banner mar_t20" style="margin:5px 3px; padding-bottom:15px; background-color:#f7f7f7; font-size:16px; line-height:16px; border-radius:4px;">
		<h4 style="line-height:20px;" class="brownTxt c"><b><입금계좌안내></b></h4>
		<p style="padding-left:5px; line-height:20px;">
			<span class="blueTxt" style="font-size:1.1em;">기업은행</span><br/>
			<span class="blueTxt" style="font-size:1.1em;">202-000430-01-058</span><br/>
			(주)비트컴퓨터
		</p>
	</div>

	<div class="banner mar_t20" style="margin:5px 3px; padding:5px 5px 15px 5px; background-color:#f7f7f7; font-size:16px; line-height:16px; border-radius:4px;">
		<h4 style="line-height:20px;" class="brownTxt c"><b><현금영수증 발행></b></h4>
		<p style="line-height: 20px;">
			<span class="blueTxt">현금 영수증 발행을 원하시면 반드시 입금 후 바로 전화주세요. </span>
		</p>
		<p style="line-height:20px; font-size:0.85em;">
			연락이 없으시면, 소득세법에 따라 영수자 없이 공급자만 존재하는 형태의 현금영수증이 다음 날에 국세청에서 자동 발행됨을 양해 부탁드립니다.
		</p>
	</div>

</nav>
