/************************ C Roadmap **************************************************/
$(".roadmapBox").on("click", function() {
	if(typeof $(this).attr("h_ref") != 'undefined') window.open($(this).attr("h_ref"), '_blank'); 
});

/************************ control Roadmap Transparency *******************************/
var opacityLow=0.3;
var roadmapPageNum=<%=roadmapPageNum%>;

$(".roadmapBox").animate({'opacity':opacityLow},1800,'easeInOutCubic',function() { });
$(".roadmapBox").on("mouseover", function() {
	$(this).stop().animate({'opacity':'1.0'},100,'easeInOutCubic',function() { });
}).on("mouseleave", function() {
	$(this).stop().animate({'opacity':opacityLow},500,'easeInOutCubic',function() { });
})
for(var i=0; i<=2; i++) {
	if(i!=roadmapPageNum-1) $(".roadmapArrow").eq(i).animate({'opacity':opacityLow},1300,'easeInOutCubic',function() { });

}
