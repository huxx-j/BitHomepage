						<%
						Response.CharSet = "euc-kr"
						Response.AddHeader "Pragma", "no-cache"
						Response.AddHeader "Expires", "0"
						%>
						<section>
							<style>
								.grid-item {
									padding:2px;
								}
								.grid-item img {
									width:280px;
								}
							</style>
							<div class="grid" id="mansorybox">
								<div class="grid-item">
									<a href="/Images/Content/Gallery/ClassEnvironment/localCampus_AsanSM_ClassEnvironment1.jpg" target="_blank"><img src="/Images/Content/Gallery/ClassEnvironment/localCampus_AsanSM_ClassEnvironment1.jpg" /></a>
								</div>
								<div class="grid-item">
									<a href="/Images/Content/Gallery/ClassEnvironment/localCampus_AsanSM_ClassEnvironment2.jpg" target="_blank"><img src="/Images/Content/Gallery/ClassEnvironment/localCampus_AsanSM_ClassEnvironment2.jpg" /></a>
								</div>
								<div class="grid-item">
									<a href="/Images/Content/Gallery/ClassEnvironment/localCampus_AsanSM_ClassEnvironment3.jpg" target="_blank"><img src="/Images/Content/Gallery/ClassEnvironment/localCampus_AsanSM_ClassEnvironment3.jpg" /></a>
								</div>
								<div class="grid-item">
									<a href="/Images/Content/Gallery/ClassEnvironment/localCampus_AsanSM_ClassEnvironment4.jpg" target="_blank"><img src="/Images/Content/Gallery/ClassEnvironment/localCampus_AsanSM_ClassEnvironment4.jpg" /></a>
								</div>
								<div class="grid-item">
									<a href="/Images/Content/Gallery/ClassEnvironment/localCampus_AsanSM_ClassEnvironment5.jpg" target="_blank"><img src="/Images/Content/Gallery/ClassEnvironment/localCampus_AsanSM_ClassEnvironment5.jpg" /></a>
								</div>
								<div class="grid-item">
									<a href="/Images/Content/Gallery/ClassEnvironment/localCampus_AsanSM_ClassEnvironment6.jpg" target="_blank"><img src="/Images/Content/Gallery/ClassEnvironment/localCampus_AsanSM_ClassEnvironment6.jpg" /></a>
								</div>
								
							</div>
						</section>
						<script>
							var $grid;
							
							$(document).ready(function() {
								$grid = $('#mansorybox').masonry({
									columnWidth: 285,
									itemSelector: '.grid-item'
								}).imagesLoaded().progress( function() {
									$('#mansorybox').masonry('layout');
								});								
							});
							
							
						</script>
					