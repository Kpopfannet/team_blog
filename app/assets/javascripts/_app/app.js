// 위지윅 사진처리를 위한 함수로, form에 .Jwysiwyg클래스를 넣어주어 사용한다.
// scaffold와 summernote의 조합으로 위지윅을 구현할 때만 사용 가능하다.
// 백에서 action에 create를 사용해 view로 [input: id]를 전달해야한다.
// Jwysiwyg(classname, #"컨트롤러 의존 이름", #"[input: 위지윅대상]의 name", #"사진저장경로(id전 까지)", #"redirect경로")
function Jwysiwyg(classname, field, name, directory, redirect){
	function operator1(classname){
	    $("body "+classname).on("change", ".note-image-input", function(){
	        files = $(classname+" .note-image-input")[0].files
	        $.each(files, function(i, file){photolist.append("photolist[]", file) }) })
	}
	function operator2(classname, field, name, directory, redirect){
	    $(classname).on("submit", function(e){
	        e.preventDefault()
			id = $("#"+field+"_id").val()
    		form = new FormData($(classname)[0])
	        wysiwyg = $(".note-editable").clone()
	        $.each(wysiwyg.find("img"), function(i, img){
	            filename = $(img).attr("data-filename")
	            if(filename!=undefined){
	            	$(img).attr("src", directory+"/"+id+"/"+filename) 
		            $.each(photolist.getAll("photolist[]"), function(i, photo){
						if(photo.name==filename){form.append(field+"[photolist][]", photo) } }) } })
	        form.append(field+name, wysiwyg.html())
	        $.ajax({
	        	url: $(classname).attr("action"), method: $(classname).attr("method"), 
	        	processData: false, contentType: false, data: form }) 
    		$( document ).ajaxComplete(function() {document.location.replace(redirect) }) })
	}
	photolist = new FormData()
    operator1(classname)
    operator2(classname, field, name, directory, redirect)
}


// 기본템플릿에서 stopPropagation이 작동하는 경우 강제로 우리가 선언한 js를 실행한다
// js와 함께 동작하는 data 메소드를 사용할 때 주로 사용한다
function Jforce(classname){
	function operator(classname){
		$("body").on('click', classname, function(){
			$(this).click() }) 
	}
	operator(classname)
}


// input테그를 통해 업로드 된 이미지를 지정한 위치(Jt)에 Jsquare를 적용해 보여준다
// 하나의 row(css) 클래스단위로 적용되니까 참고 및 주의
function Jpreview(classname){
	function operator(objs){
		$.each(objs, function(i, obj){
			$(obj).change(function(){
			    var file_reader = new FileReader()
			    file_reader.readAsDataURL(this.files[0])
			    target=$(this).parentsUntil(".row").find(".Jt")
			    $(file_reader).on("load", function(e){
			        target.attr("src", e.target.result)
			        target.removeClass("lmgv").addClass("lmg")
			        Jsquare(".Jsquare") }) }) })
	}
	objs=$(classname)
	operator(objs)
}


// 해당 객체를 가로 기준 정사각형으로 만들어 버린다
// 해당 객체의 직속 자손 객체가 lmg라는 클래스를 가진다면, 자식 객체는 정사각형에 최적화되도록 재조정 된다
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
	        		child.addClass("lmgv").removeClass("lmg") } } })
	}
    objs=$(classname)
    operator(objs)
}


//해당 객체 부모의 height를 같은 단계의 (같은 직속 부모를 가진) 객체중 가장 위아래로 긴 객체와 같도록 함
//해당 객체의 부모는 반드시 col-md-n의 속성을 가진다. 따라서 부모의 부모는 row속성을 가진다
function Jbottom(classname){
	function operator(objs){
	   	$.each(objs, function(i, obj){
	        obj=$(obj)
	        parent=obj.parent()
	        cols=parent.siblings()
	        height=$(cols[0]).css("height")
			$.each(cols, function(i, col){
				next_height=$(col).css("height")
				if(next_height>height){height=next_height} })
			parent.css("height",height)
			obj.addClass("lb") })
	}
	objs=$(classname)
    operator(objs)
}





function gogoTop(point) {
    $('body').animate({scrollTop: point}, '500');
}