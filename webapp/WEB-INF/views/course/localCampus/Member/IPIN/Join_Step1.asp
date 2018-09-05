<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<!-- #include virtual = "/localCampus/Include/Meta.asp" -->
<!-- CSS  -->
<!-- #include virtual = "/localCampus/Include/contentStyle.asp" -->
<!-- Script -->
<!-- #include virtual = "/localCampus/Include/Script.asp" -->
<script type="text/javascript">
	$(function(){
		ajaxLoad('#ConDetail', '', '/localCampus/Content/Tab/asan_courseInfo.asp');
	});
</script>
</head>
<body>
	<div id="Wrapper">
		<!-- SkipMenu -->
		<!-- #include virtual = "/localCampus/Include/skipMenu.asp"-->
		<!-- //SkipMenu -->

		<!-- Header_Wrap -->
		<!-- #include virtual = "/localCampus/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<div id="Container">
			<div id="Content" class="sub">
				<h3>회원가입</h3>
				<section class="section">
					<div class="section_header">
						<h4>아래[가입 약관]에 동의하십니까?</h4>
					</div>
					<div class="cntBox policy">
						<h5>제 1 장 총칙</h5>
						<dl>
							<dt>제 1 조 (목적)</dt>
							<dd>이 약관은 주식회사비트컴퓨터 부설 비트교육센터(이하 센터라 합니다)가 제공하는 IT교육사업 관련 서비스(이하 서비스라 합니다)를 이용함에 있어 이용조건 및 절차와 기타 필요한 사항을 규정하는 것을 목적으로 합니다. </dd>
						</dl>
						<dl>
							<dt>제 2 조 (약관의 효력 및 변경)</dt>
							<dd>
								<ol>
									<li>본 약관은 그 내용을 서비스 화면에 게시하고 이용자가 서비스화면에서 동의 의사표시를 함으로써 효력을 발생합니다.</li>
									<li>회사는 사정상 혹은 영업상 중요한 사유가 발생될 경우에는 약관의규제등에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배 하지 않은 범위에서 이 약관을 개정할 수 있습니다.</li>
									<li>회사가 약관을 개정할 경우에는 적용일자 및 개정 사유를 명시하여 현행 약관과 함께 서비스 초기화면에 공지하며, 제1항과 같은 방법으로 효력을 발생시킵니다. 단, 구 약관에 동의한 이용자가 약관 개정 적용일 이후에도 계속 회사의 서비스를 이용하면 개정 약관에 대해 동의한 것으로 간주합니다.</li>
									<li>회원은 개정된 약관에 동의하지 않을 경우 서비스 이용을 중단하고 회원 탈퇴를 요청할 수 있습니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 3 조 (약관 외 준칙)</dt>
							<dd>이 약관에 명시되지 않은 사항은 관계 법령에 규정되어 있을 경우 그 규정에 따르며, 그렇지 않은 경우에는 정부가 제정한 전자거래소비자보호지침 및 관계법령 또는 일반적인 관례에 따릅니다.</dd>
						</dl>
						<dl>
							<dt>제 4 조 (용어의 정의)</dt>
							<dd>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</dd>
							<dd>
								<ol>
									<li>서비스라 함은 센터 홈페이지 내 모든 메뉴: 온라인지원, 센터 교육과정 및 기타 정보, 회원이 이용하는 게시판 혹은 FAQ, 메일 등을 말합니다.</li>
									<li>센터가 제공하는 서비스를 받는 자를 통칭 이용자라고 합니다. 이용자는 비회원, 회원으로 구성됩니다.
										<ol class="listLower">
											<li> 비회원이라 함은 회원에 가입하지 않고 센터에서 제공하는 일부 서비스를 이용하는 자를 말합니다.</li>
											<li>회원이라 함은 가입신청을 할 경우 자동적으로 등록되며, 센터에 개인정보를 제공하여 회원등록을 한 자로서, 센터의 정보를 지속적으로 제공받으며, 센터에서 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다. </li>
										</ol>
									</li>
								</ol>
							</dd>
						</dl>
					</div>
					<div class="cntBox policy mar_t10">
						<h5>제 1 장 총칙</h5>
						<dl>
							<dt>제 1 조 (목적)</dt>
							<dd>이 약관은 주식회사비트컴퓨터 부설 비트교육센터(이하 센터라 합니다)가 제공하는 IT교육사업 관련 서비스(이하 서비스라 합니다)를 이용함에 있어 이용조건 및 절차와 기타 필요한 사항을 규정하는 것을 목적으로 합니다. </dd>
						</dl>
						<dl>
							<dt>제 2 조 (약관의 효력 및 변경)</dt>
							<dd>
								<ol>
									<li>본 약관은 그 내용을 서비스 화면에 게시하고 이용자가 서비스화면에서 동의 의사표시를 함으로써 효력을 발생합니다.</li>
									<li>회사는 사정상 혹은 영업상 중요한 사유가 발생될 경우에는 약관의규제등에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배 하지 않은 범위에서 이 약관을 개정할 수 있습니다.</li>
									<li>회사가 약관을 개정할 경우에는 적용일자 및 개정 사유를 명시하여 현행 약관과 함께 서비스 초기화면에 공지하며, 제1항과 같은 방법으로 효력을 발생시킵니다. 단, 구 약관에 동의한 이용자가 약관 개정 적용일 이후에도 계속 회사의 서비스를 이용하면 개정 약관에 대해 동의한 것으로 간주합니다.</li>
									<li>회원은 개정된 약관에 동의하지 않을 경우 서비스 이용을 중단하고 회원 탈퇴를 요청할 수 있습니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 3 조 (약관 외 준칙)</dt>
							<dd>이 약관에 명시되지 않은 사항은 관계 법령에 규정되어 있을 경우 그 규정에 따르며, 그렇지 않은 경우에는 정부가 제정한 전자거래소비자보호지침 및 관계법령 또는 일반적인 관례에 따릅니다.</dd>
						</dl>
						<dl>
							<dt>제 4 조 (용어의 정의)</dt>
							<dd>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</dd>
							<dd>
								<ol>
									<li>서비스라 함은 센터 홈페이지 내 모든 메뉴: 온라인지원, 센터 교육과정 및 기타 정보, 회원이 이용하는 게시판 혹은 FAQ, 메일 등을 말합니다.</li>
									<li>센터가 제공하는 서비스를 받는 자를 통칭 이용자라고 합니다. 이용자는 비회원, 회원으로 구성됩니다.
										<ol class="listLower">
											<li> 비회원이라 함은 회원에 가입하지 않고 센터에서 제공하는 일부 서비스를 이용하는 자를 말합니다.</li>
											<li>회원이라 함은 가입신청을 할 경우 자동적으로 등록되며, 센터에 개인정보를 제공하여 회원등록을 한 자로서, 센터의 정보를 지속적으로 제공받으며, 센터에서 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다. </li>
										</ol>
									</li>
								</ol>
							</dd>
						</dl>
					</div>
					<div class="btn_wrap c mar_t20">
						<a href="/localCampus/Member/IPIN/Join_Step2.asp" title="동의" class="btn big green1">동의</a>
						<a href="javascript:history.back();" title="비동의" class="btn big white">비동의</a>
					</div>
				</section>
			</div>
		</div>
		<!-- Footer_Wrap -->
		<!-- #include virtual = "/localCampus/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>