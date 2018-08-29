/*########## Originally, SNB from Common_Js ##########*/

$("#Content").append("<span style='font-size:0.25em; float:right;'><i>Old</i></span>");

$(".snb_1709 .newdepth1").on("click focusin", function(){
	if($(this).hasClass("on") == false){
		$(".newdepth2_wrap").slideUp("slow", 'easeOutQuint');
	}
	if($(".snb_1709 .newdepth1").hasClass("on")){
		$(this).siblings(".newdepth2_wrap").slideDown("slow", 'easeOutQuint');
	}
	$(".snb_1709 .newdepth1").removeClass("on");
	$(this).addClass("on");
});

$(".snb_1709 .newdepth2").on("click", function(){
console.log("잠시 작업중입니다. 죄송합니다. 문의는 02-3486-3456으로 전화주세요.");
	if($(this).hasClass("on") == false){
		$(".newdepth3_wrap").slideUp("slow", 'easeOutQuint');
	}
	if($(".snb_1709 .newdepth2").hasClass("on")){
		$(this).siblings(".newdepth3_wrap").slideDown("slow", 'easeOutQuint');
	}
	$(".snb_1709 .newdepth2").removeClass("on");
	$(this).addClass("on");
});

$(".snb_1709 .newdepth2").on("mouseenter focusin", function(){
	$(this).addClass("on");
	$(this).stop().animate({color:'#1b499b' }, 100);
}).on("mouseleave focusout", function(){
	$(this).removeClass("on");
	$(this).stop().animate({color:'#000'}, 500);
});

$(".snb_1709 .newdepth3").on("mouseenter focusin", function(){
	$(this).addClass("on");
	$(this).stop().animate({color:'#1b499b'}, 100);
	
}).on("mouseleave focusout", function(){
	$(this).removeClass("on");
	$(this).stop().animate({color:'#000'}, 500);
});

$(".snb_1709 .newdepth4").on("mouseenter focusin", function(){
	$(this).addClass("on");
	$(this).stop().animate({color:'#1b499b'}, 100);
	
}).on("mouseleave focusout", function(){
	$(this).removeClass("on");
	$(this).stop().animate({color:'#000'}, 500);
});

