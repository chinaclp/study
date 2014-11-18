class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(params[:topic])
    @topic.user_id = current_user.id
    if @topic.save
      redirect_to :action => :index
    else
      render :action => 'new'
    end
  end

 def show
   @comment = Comment.new
   @topic = Topic.find(params[:id])
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update_attributes(params[:topic])  
      redirect_to(@topic, :notice => 'User was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_path
  end

end
