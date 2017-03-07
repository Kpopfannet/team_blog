$( window ).load(function(){
	if($(".Jwysiwyg")[0]){
		aws_s3_url = "https://ssteamblog.s3.amazonaws.com"
		Jwysiwyg('.Jwysiwyg', 'blog', '[content]', aws_s3_url+'/uploads/blog/photolist', '/blogs')
	}
	if($(".Jpagemove")[0]){Jpagemove(".Jpagemove", "/blogs") }
})





