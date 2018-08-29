
function showSNB() {
	$("#SNB_Wrap_1702").css('display','block');
	$(".hGroup .btnMenu").hide();
	$("#Content").css('float', 'right');	// Common_CSS_Detail_1702RESPONSIVE.css
	$("#Content").css('padding-left', '20px');	// Common_CSS_Detail_1702RESPONSIVE.css @media (max-width:879px) 
	$("#Content").css('width', '81.02%');	// Common_CSS_Detail_1702RESPONSIVE.css

	$("#SNB_Wrap_1702").css('min-width','140px');
	$("#SNB_Wrap_1702").css('z-index', '999');
	$("#SNB_Wrap_1702 h3").css('font-size', '20px');
	//$("#SNB_Wrap_1702 li a.newdepth1").css('font-size', '15px');
	//$("#SNB_Wrap_1702 li a.newdepth1").css('padding-left', '12px');
	//$("#SNB_Wrap_1702 li a.newdepth2").css('font-size', '13px');
	//$("#SNB_Wrap_1702 li a.newdepth3").css('font-size', '14px');
	//$("#SNB_Wrap_1702 li a.newdepth3").css('height', '20px');
	
}
function hideSNB() {
	$("#SNB_Wrap_1702").css('display','none');
	$(".hGroup .btnMenu").show();
	$("#Content").css('float', 'none');	// Common_CSS_Detail_1702RESPONSIVE.css @media (max-width:879px) 
	$("#Content").css('width', '95%');	// Common_CSS_Detail_1702RESPONSIVE.css @media (max-width:879px) 
}

/*** btnMenu for SNB_Course_1702RESPONSIVE ***/
$(".hGroup .btnMenu").on("click", function() {
	showSNB();
});

$(window).resize(function(){
	if(window.innerWidth<=879) hideSNB();
	if(window.innerWidth>=880) showSNB();
});

$(".hGroup .btnMenu").hide();
if(window.innerWidth<=879) hideSNB();
