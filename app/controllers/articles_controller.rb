class ArticlesController < ApplicationController
    def show # To access perticular article by ID
      @selected_article = Article.find(params[:id])
    end
    def index # TO access all the articles in the Table
      @articles = Article.all 
    end

    def new  # New Acticle creation Form 
      
    end

    def create # create new article
      # render plain: params[:article] 
      @article  = Article.new(params.require(:article).permit(:title,:discription));
      # render plain: @article # @article.inspect - > to show the details of the object
      @article.save
      redirect_to @article; 
    end
end 