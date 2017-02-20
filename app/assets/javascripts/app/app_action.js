$( document ).ready(function(){
	Jsquare(".Jsquare")
	Jbottom(".Jbottom")
	Jpreview(".Jpreview")
	tinymce.init({ 
		selector:'.tinymce_area',
		content_css: "/plugin/tinymce.css",
		menubar: false,
		plugins: "image",
		plugins: "autoresize",
		file_picker_types: 'image', 
		autoresize_min_height: 100,
		autoresize_max_height: 1000,
		autoresize_bottom_margin: 0
	})
})
$( window ).load(function(){
	Jsquare(".Jsquare")
	Jbottom(".Jbottom")
	Jpreview(".Jpreview")
})
$( window ).resize(function(){
	Jsquare(".Jsquare")
	Jbottom(".Jbottom")
	Jpreview(".Jpreview")
})