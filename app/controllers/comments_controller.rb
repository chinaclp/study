class CommentsController < ApplicationController

  def create
    if params[:topic_id]
      @host = Topic.find_by_id(params[:topic_id])
    elsif params[:article_id]
      @host = Article.find_by_id(params[:article_id])
    end
    @host.comments.create(params[:comment])
    redirect_to @host
  end
end
