class ArticlesController < ApplicationController
  
  before_action :set_article, only: [:edit, :update, :show, :destroy] 
  
  
  def index 
    @grab_articles = Article.all
  end
  
  
  def new 
    @article = Article.new
  end
  
  def edit 
    
  end
  
  
  def create
    
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article was success"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end
  
  def show
    
  end
  
  def destroy
   
    @article.destroy
    flash[:danger] = "Article was successfully deleted"
    redirect_to articles_path
  end
  
  
  
  def update
    
    if @article.update(article_params)
      flash[:success] = "Article successfully updted"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
      
  end
  
  private
    def set_article
      @article = Article.find(params[:id])
    end
    def article_params
    params.require(:article).permit(:title, :description)
    end
end