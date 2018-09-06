		<script type="text/javascript">
			$(function(){
				$("#familySite").change(function(){
					if($("#familySite option:selected").val() != ""){
						window.open($("#familySite option:selected").val(), "");
					}
				});
			});
		</script>
		<div id="Footer_Wrap" class="row">
			<div class="familySite_wrap col12 col">
				<div class="familySite">
					<select name="familySite" id="familySite">
						<option>:::Family Site</option>
						<option value="http://www.bit.kr">비트컴퓨터</option>
						<option value="http://www.bitschool.com">비트스쿨</option>
					</select>
				</div>
			</div>
			<footer id="Footer">
				<address class="address">
					서울시 서초구 서초동 1327-33 비트빌3층  사업자등록번호 : 220-81-29726  대표이사 : 조현정 (주)비트컴퓨터<br>
					TEL  : 02.3486.3456     Fax : 02.3486.7890     통신판매 신고번호 제 2038-서울서초-0098 호
					<p class="copyright">COPYRIGHT (c) 2005  BY BITACADEMY  ALL RIGHT RESERVED.</p>
				</address>
			</footer>

		</div>
	</div>