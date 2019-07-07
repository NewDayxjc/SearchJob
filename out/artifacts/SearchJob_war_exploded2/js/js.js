// JavaScript Document
$(document).ready(function(){

	$(".main_visual").hover(function(){
		$("#btn_prev,#btn_next").fadeIn()
	},function(){
		$("#btn_prev,#btn_next").fadeOut()
	});
	
	$dragBln = false;
	
	$(".main_image").touchSlider({
		flexible : true,
		speed : 200,
		btn_prev : $("#btn_prev"),
		btn_next : $("#btn_next"),
		paging : $(".flicking_con a"),
		counter : function (e){
			$(".flicking_con a").removeClass("on").eq(e.current-1).addClass("on");
		}
	});
	
	$(".main_image").bind("mousedown", function() {
		$dragBln = false;
	});
	
	$(".main_image").bind("dragstart", function() {
		$dragBln = true;
	});
	
	$(".main_image a").click(function(){
		if($dragBln) {
			return false;
		}
	});
	
	timer = setInterval(function(){
		$("#btn_next").click();
	}, 3000);
	
	$(".main_visual").hover(function(){
		clearInterval(timer);
	},function(){
		timer = setInterval(function(){
			$("#btn_next").click();
		},3000);
	});
	
	$(".main_image").bind("touchstart",function(){
		clearInterval(timer);
	}).bind("touchend", function(){
		timer = setInterval(function(){
			$("#btn_next").click();
		}, 3000);
	});
	
});


//内页banner
$(document).ready(function(){

	$(".main_visual_a").hover(function(){
		$("#btn_prev_a,#btn_next_a").fadeIn()
	},function(){
		$("#btn_prev_a,#btn_next_a").fadeOut()
	});
	
	$dragBln = false;
	
	$(".main_image_a").touchSlider({
		flexible : true,
		speed : 200,
		btn_prev : $("#btn_prev_a"),
		btn_next : $("#btn_next_a"),
		paging : $(".flicking_con_a a"),
		counter : function (e){
			$(".flicking_con_a a").removeClass("on").eq(e.current-1).addClass("on");
		}
	});
	
	$(".main_image_a").bind("mousedown_a", function() {
		$dragBln = false;
	});
	
	$(".main_image_a").bind("dragstart_a", function() {
		$dragBln = true;
	});
	
	$(".main_image_a a").click(function(){
		if($dragBln) {
			return false;
		}
	});
	
	timer = setInterval(function(){
		$("#btn_next_a").click();
	}, 3000);
	
	$(".main_visual_a").hover(function(){
		clearInterval(timer);
	},function(){
		timer = setInterval(function(){
			$("#btn_next_a").click();
		},3000);
	});
	
	$(".main_image_a").bind("touchstart_a",function(){
		clearInterval(timer);
	}).bind("touchend_a", function(){
		timer = setInterval(function(){
			$("#btn_next_a").click();
		}, 3000);
	});
	
});



// 切换标签效果
$(function($){
	$("#switchBox").switchTab();
	
	$("#switchBox2").switchTab({effect: "fade"});
	
	$("#switchBox3").switchTab({titCell: "dt a", trigger: "mouseover", delayTime: 0});
	
	$("#switchBox4").switchTab({titCell: "dt a", effect: "fade", trigger: "mouseover", delayTime: 300});
	
	$("#switchBox5").switchTab({defaultIndex: "1", titOnClassName: "active", titCell: "dt em", mainCell: "dd ul", effect: "slide"});
	
	$(".slideBox").switchTab({trigger: "mouseover", delayTime: 0});
	
	$("#switchBox7").switchTab({defaultIndex: "1", titCell: "dt span", mainCell: "dd", interTime: 5000});
	
});




//  城市切换效果

//切换城市
var Drag = {
	obj : null,

	init : function(o, oRoot, minX, maxX, minY, maxY, bSwapHorzRef, bSwapVertRef, fXMapper, fYMapper)
	{
		o.onmousedown	= Drag.start;

		o.hmode			= bSwapHorzRef ? false : true ;
		o.vmode			= bSwapVertRef ? false : true ;

		o.root = oRoot && oRoot != null ? oRoot : o ;

		if (o.hmode  && isNaN(parseInt(o.root.style.left  ))) o.root.style.left   = "0px";
		if (o.vmode  && isNaN(parseInt(o.root.style.top   ))) o.root.style.top    = "0px";
		if (!o.hmode && isNaN(parseInt(o.root.style.right ))) o.root.style.right  = "0px";
		if (!o.vmode && isNaN(parseInt(o.root.style.bottom))) o.root.style.bottom = "0px";

		o.minX	= typeof minX != 'undefined' ? minX : null;
		o.minY	= typeof minY != 'undefined' ? minY : null;
		o.maxX	= typeof maxX != 'undefined' ? maxX : null;
		o.maxY	= typeof maxY != 'undefined' ? maxY : null;

		o.xMapper = fXMapper ? fXMapper : null;
		o.yMapper = fYMapper ? fYMapper : null;

		o.root.onDragStart	= new Function();
		o.root.onDragEnd	= new Function();
		o.root.onDrag		= new Function();
	},

	start : function(e)
	{
		var o = Drag.obj = this;
		e = Drag.fixE(e);
		var y = parseInt(o.vmode ? o.root.style.top  : o.root.style.bottom);
		var x = parseInt(o.hmode ? o.root.style.left : o.root.style.right );
		o.root.onDragStart(x, y);

		o.lastMouseX	= e.clientX;
		o.lastMouseY	= e.clientY;

		if (o.hmode) {
			if (o.minX != null)	o.minMouseX	= e.clientX - x + o.minX;
			if (o.maxX != null)	o.maxMouseX	= o.minMouseX + o.maxX - o.minX;
		} else {
			if (o.minX != null) o.maxMouseX = -o.minX + e.clientX + x;
			if (o.maxX != null) o.minMouseX = -o.maxX + e.clientX + x;
		}

		if (o.vmode) {
			if (o.minY != null)	o.minMouseY	= e.clientY - y + o.minY;
			if (o.maxY != null)	o.maxMouseY	= o.minMouseY + o.maxY - o.minY;
		} else {
			if (o.minY != null) o.maxMouseY = -o.minY + e.clientY + y;
			if (o.maxY != null) o.minMouseY = -o.maxY + e.clientY + y;
		}

		document.onmousemove	= Drag.drag;
		document.onmouseup		= Drag.end;

		return false;
	},

	drag : function(e)
	{
		e = Drag.fixE(e);
		var o = Drag.obj;

		var ey	= e.clientY;
		var ex	= e.clientX;
		var y = parseInt(o.vmode ? o.root.style.top  : o.root.style.bottom);
		var x = parseInt(o.hmode ? o.root.style.left : o.root.style.right );
		var nx, ny;

		if (o.minX != null) ex = o.hmode ? Math.max(ex, o.minMouseX) : Math.min(ex, o.maxMouseX);
		if (o.maxX != null) ex = o.hmode ? Math.min(ex, o.maxMouseX) : Math.max(ex, o.minMouseX);
		if (o.minY != null) ey = o.vmode ? Math.max(ey, o.minMouseY) : Math.min(ey, o.maxMouseY);
		if (o.maxY != null) ey = o.vmode ? Math.min(ey, o.maxMouseY) : Math.max(ey, o.minMouseY);

		nx = x + ((ex - o.lastMouseX) * (o.hmode ? 1 : -1));
		ny = y + ((ey - o.lastMouseY) * (o.vmode ? 1 : -1));

		if (o.xMapper)		nx = o.xMapper(y)
		else if (o.yMapper)	ny = o.yMapper(x)

		Drag.obj.root.style[o.hmode ? "left" : "right"] = nx + "px";
		Drag.obj.root.style[o.vmode ? "top" : "bottom"] = ny + "px";
		Drag.obj.lastMouseX	= ex;
		Drag.obj.lastMouseY	= ey;

		Drag.obj.root.onDrag(nx, ny);
		return false;
	},

	end : function()
	{
		document.onmousemove = null;
		document.onmouseup   = null;
		Drag.obj.root.onDragEnd(	parseInt(Drag.obj.root.style[Drag.obj.hmode ? "left" : "right"]), 
									parseInt(Drag.obj.root.style[Drag.obj.vmode ? "top" : "bottom"]));
		Drag.obj = null;
	},

	fixE : function(e)
	{
		if (typeof e == 'undefined') e = window.event;
		if (typeof e.layerX == 'undefined') e.layerX = e.offsetX;
		if (typeof e.layerY == 'undefined') e.layerY = e.offsetY;
		return e;
	}
};

var masked=false;
// 全屏遮罩层
function boxAlpha (){
	if (masked==false){
		maskLayer();
		masked=true;
	}
	else{
		$('#maskLayer').hide();
		masked=false;
	}
}

function maskLayer(){
	var FW=document.body.scrollWidth;
	var FH=document.body.scrollHeight;
	var SH=window.screen.height;
	FH=FH<SH?SH:FH;
	$("#alphadiv").height(FH).width(FW);
	$('#maskLayer').show();
	$('#maskLayer_iframe').css({position:"absolute",left:"0px",top:"0px"}).height(FH).width(FW);
}

function draglayer(){
	var och=$("#drag").height();
	var ocw=$("#drag").width();
	var bsl = document.documentElement.scrollLeft || document.documentElement.scrollLeft;
	var bst = document.documentElement.scrollTop || document.documentElement.scrollTop;
	var bcw = document.documentElement.clientWidth || document.documentElement.clientWidth;
	var bch = document.documentElement.clientHeight || document.documentElement.clientHeight;
	var osl = bsl + Math.floor( ( bcw - ocw ) / 2 );
	osl = Math.max( bsl , osl );
	var ost = bst + Math.floor( ( bch - och ) / 2 );
	ost = Math.max( bst , ost );

	$("#drag").css({"top":ost,"left":osl,"width":ocw}).show();
	var theHandle = document.getElementById("drag_h");
	var theRoot   = document.getElementById("drag");
	Drag.init(theHandle, theRoot);
}
$(window).resize(function (){
	if (masked==true){
		draglayer();
		maskLayer();
	}
});


function in_array(needle, haystack) {
	if(typeof needle == 'string' || typeof needle == 'number') {
		for(var i in haystack) {
			if(haystack[i] == needle) {
					return true;
			}
		}
	}
	return false;
}


var na=[];
na['001']='陕 县';
na['002']='渑池县';
na['003']='卢氏县';
na['004']='义马市';
na['018']='灵宝市';
na['019']='湖滨区';
na['020']='陕 县';
na['021']='渑池县';
na['022']='卢氏县';
na['023']='义马市';
na['024']='灵宝市';
na['025']='湖滨区';

var nation = {
	// 国籍输出
	Show : function(){
		var output='',flag,output2='';
		for (var i in na){
			output+='<li onclick="nation.Chk(\''+i+'\')">'+na[i]+'</li>';
		}
		$('#drag').width('470px');
		$('#nationList').html('<ul>'+output+'</ul>');
		// 鼠标悬停变色
		$('#nationAlpha li').hover(function(){$(this).addClass('over')},function(){$(this).removeClass('over')});
	},
	Chk : function(id){
		$('#btn_nation').val(na[id]);
		$('#nation').val(id);
		boxAlpha();
	}
}

function nationSelect(){
	var dragHtml ='<div id="nationAlpha">';		//国籍
		dragHtml+='		<div id="nationList"></div>';//国籍列表
		dragHtml+='</div>';
	$('#drag_h').html('<b>请选择国籍</b><span onclick="boxAlpha()">关闭</span>');
	$('#drag_con').html(dragHtml);

	nation.Show();
	boxAlpha();
	draglayer();
}



//搜索框下拉
$(function() {
	var Accordion = function(el, multiple) {
		this.el = el || {};
		this.multiple = multiple || false;

		// Variables privadas
		var links = this.el.find('.linkb');
		// Evento
		links.on('click', {el: this.el, multiple: this.multiple}, this.dropdown)
	}

	Accordion.prototype.dropdown = function(e) {
		var $el = e.data.el;
			$this = $(this),
			$next = $this.next();

		$next.slideToggle();
		$this.parent().toggleClass('open');
	}	

	var accordion = new Accordion($('#accordion'), false);
});





