// 해당 객체를 가로 기준 정사각형으로 만들어 버린다.
// 해당 객체의 바로 아래에 자식이 lmg라는 클래스를 가진가면, 그 자식은 정사각형에 최적화되도록 재조정 된다.
function Jsquare(classname) {
    function operator(objs){
	   	$.each(objs, function(i, obj){
	        obj=$(obj)
	        width=parseInt(obj.css("width"))
			obj.css("height", width)
			obj.css("min-height", width)
	        child=$(obj.children()[0])
	        if(child.hasClass("lmg")){
	        	if(parseInt(child.css("height"))>width){child.css("height", "100%").removeClass("lmg") }
	        }else if(child.hasClass("mce-tinymce")){
	        	$("#blog_content_ifr").css("height", width-111)
	        }
	    })
	}
    objs=$(classname)
    operator(objs)
}

//해당 객체 부모의 height를 같은 단계의 (같은 직속 부모를 가진) 객체중 가장 위아래로 긴 객체와 같도록 함.
//해당 객체의 부모는 반드시 col-md-n의 속성을 가진다. 따라서 부모의 부모는 row속성을 가진다.
function Jbottom(classname){
	function operator(objs){
	   	$.each(objs, function(i, obj){
	        obj=$(obj)
	        parent=obj.parent()
	        cols=parent.siblings()
	        height=$(cols[0]).css("height")
			$.each(cols, function(i, col){
				next_height=$(col).css("height")
				if(next_height>height){height=next_height}
			})
			parent.css("height",height)
			obj.addClass("lb")
	    })
	}
	objs=$(classname)
    operator(objs)
}

function gogoTop(point) {
    $('body').animate({scrollTop: point}, '500');
}