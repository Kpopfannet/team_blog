// input테그를 통해 업로드 된 이미지를 지정한 위치(Jt)에 Jsquare를 적용해 보여준다
// 하나의 row(css) 클래스단위로 적용되니까 참고 및 주의.
function Jpreview(classname){
	function operator(objs){
		$.each(objs, function(i, obj){
			$(obj).change(function(){
			    var file_reader = new FileReader()
			    file_reader.readAsDataURL(this.files[0])
			    target=$(this).parentsUntil(".row").find(".Jt")
			    file_reader.onload=function(e){
			        target.attr("src", e.target.result)
			        target.removeClass("lmgv").addClass("lmg")
			        Jsquare(".Jsquare")
			    }
			})
		})
	}
	objs=$(classname)
	operator(objs)
}


// 해당 객체를 가로 기준 정사각형으로 만들어 버린다.
// 해당 객체의 직속 자손 객체가 lmg라는 클래스를 가진다면, 자식 객체는 정사각형에 최적화되도록 재조정 된다.
function Jsquare(classname) {
    function operator(objs){
	   	$.each(objs, function(i, obj){
	        obj=$(obj)
	        width=parseInt(obj.css("width"))
			obj.css("height", width)
			obj.css("min-height", width)
	        child=$(obj.children()[0])
	        if(child.hasClass("lmg")){
	        	if(parseInt(child.css("height"))>width){
	        		child.addClass("lmgv").removeClass("lmg")
	        	}
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