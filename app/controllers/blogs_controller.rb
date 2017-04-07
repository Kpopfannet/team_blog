class BlogsController < ApplicationController
  before_action :set_blog, only: [:edit, :update, :destroy]

  def index
    @blogs = Blog.paginate(page: params[:page], per_page: 2).order('created_at DESC')
    render "_page_move" if params[:page]
  end

  def new
    blog = Blog.create.destroy
    @blog = Blog.new(id: blog.id)
  end

  def edit
  end

  def create
    @blog = Blog.create(blog_params)
  end

  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to "/blogs", notice: 'Blog was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
    end
  end

  private
    def set_blog
      @blog = Blog.find(params[:id])
    end

    def blog_params
      params.fetch(:blog, {}).permit(:id, :content, :photo, {photolist: []})
    end
end
