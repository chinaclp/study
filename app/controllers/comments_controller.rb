class CommentsController < ApplicationController

  def create
    if params[:topic_id]
      @host = Topic.find_by_id(params[:topic_id])
    elsif params[:article_id]
      @host = Article.find_by_id(params[:article_id])
    end
    comment = @host.comments.create(params[:comment])
    comment.update_attributes(user_id: current_user.id)#添加用户id
    render partial: "articles/info", locals: {comment: comment, article: @host}
  #  respond_to do |format|
   #   format.html {redirect_to @host}
     # format.json { render :json => {user_name: comment.user.name, content: comment.content, time_now: comment.created_at}} # <- 这里
  #    format.json  {render partial: "articles/info", locals: {comment: comment}}
  #  end
  end

  def destroy
    @comment = Comment.find_by_id(params[:id])
    # @comment.user_id == current_user.id
    @comment.destroy
    respond_to do |format|
      format.html {redirect_to @comment.host}
      format.json { render :json => {id: @comment.id}} # <- 这里
    end
  end

end
