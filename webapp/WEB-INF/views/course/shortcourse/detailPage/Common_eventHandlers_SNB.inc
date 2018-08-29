/*########## SNB from Common_Js ##########*/
$(".snb_1702 .newdepth1").on("click focusin", function(){
	if($(this).hasClass("on") == false){
		$(".newdepth2_wrap").slideUp("slow", 'easeOutQuint');
	}
	if($(".snb_1702 .newdepth1").hasClass("on")){
		$(this).siblings(".newdepth2_wrap").slideDown("slow", 'easeOutQuint');
	}
	$(".snb_1702 .newdepth1").removeClass("on");
	$(this).addClass("on");
});
$(".snb_1702 .newdepth2").on("mouseenter focusin", function(){
	$(this).addClass("on");
	$(this).stop().animate({color:'#007a3d', fontSize:'14px'}, 100);
}).on("mouseleave focusout", function(){
	$(this).removeClass("on");
	$(this).stop().animate({color:'#000', fontSize:'13px'}, 500);
});
$(".snb_1702 .newdepth3").on("mouseenter focusin", function(){
	$(this).addClass("on");
	$(this).stop().animate({color:'#007a3d', fontSize:'14px'}, 100);
	
}).on("mouseleave focusout", function(){
	$(this).removeClass("on");
	$(this).stop().animate({color:'#000', fontSize:'13px'}, 500);
});
