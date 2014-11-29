class ArticlesController < ApplicationController

  def user_articles
    @articles = Article.where(user_id: params[:id]).page(params[:page]).per(20)
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article =Article.new(params[:article])
    @article.user_id = current_user.id
    if @article.save
      redirect_to :action => :index
    else
      render :action => 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
      if @article.update_attributes(params[:article])  
         redirect_to(@article, :notice => 'User was successfully updated.')
      else
         render :action => "edit"
      end

  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

end
