class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]

    # GET /articles
    # GET /articles.json
    def index
        @articles = Article.all
    end

    # GET /articles/1
    # GET /articles/1.json
    def show
    end

    # GET /articles/new
    # or GET /member/1/articles/new
    def new
        @article = Article.new
        @member_id = params[:member_id] if params[:member_id]
    end

    # GET /articles/1/edit
    def edit
    end

    # POST /articles
    def create
        @article = Article.new(article_params)
        
        categorizer(@article)
        
        respond_to do |format|
            if @article.save
                format.html { redirect_to @article.member, notice: 'Article was successfully created.' }
            else
                format.html { render :new, notice: 'failed' }
            end
        end
    end

    # PATCH/PUT /articles/1
    def update
        respond_to do |format|
            if @article.update(article_params)
                format.html { redirect_to @article.member, notice: 'Article was successfully updated.' }
            else
                format.html { render :edit }
            end
        end
    end

    # DELETE /articles/1
    def destroy
        @article.destroy
        respond_to do |format|
            format.html { redirect_to @article.member, notice: 'Article was successfully destroyed.' }
        end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
        @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
        params.require(:article).permit(:member_id, :category_id, :template, :thumbnail, :title, :preview, :photo, :content)
    end
    
    def categorizer(article)
        default_caterory    = 1
        category            = default_caterory
        
        if article.photo.nil?
            category = 3
        end
        article.category_id = category
    end
end
