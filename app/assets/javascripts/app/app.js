function square(classname) {
    function operator(objs){
	   	$.each(objs, function(i, obj){
	        obj=$(obj)
	        child=$(obj.children()[0])
	        width=parseInt(obj.css("width"))
			obj.css("height", width)
			obj.css("min-height", width)
	        if(parseInt(child.css("height"))>width){child.css("height", "100%").removeClass("img") } 
	    })
	}
    objs=$(classname)
    $( document ).ready(function(){operator(objs)})
	$( window ).resize(function(){operator(objs)})
}

function gogoTop(point) {
    $('body').animate({scrollTop: point}, '500');
}