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
						<option value="http://www.bit.kr">��Ʈ��ǻ��</option>
						<option value="http://www.bitschool.com">��Ʈ����</option>
					</select>
				</div>
			</div>
			<footer id="Footer">
				<address class="address">
					����� ���ʱ� ���ʵ� 1327-33 ��Ʈ��3��  ����ڵ�Ϲ�ȣ : 220-81-29726  ��ǥ�̻� : ������ (��)��Ʈ��ǻ��<br>
					TEL  : 02.3486.3456     Fax : 02.3486.7890     ����Ǹ� �Ű��ȣ �� 2038-���Ｍ��-0098 ȣ
					<p class="copyright">COPYRIGHT (c) 2005  BY BITACADEMY  ALL RIGHT RESERVED.</p>
				</address>
			</footer>

		</div>
	</div>