class PostsController < ApplicationController
  def new
    @notice = Notice.find(params[:notice_id])
    @post = Post.new
  end

  def create
    @notice = Notice.find(params[:notice_id])
    @post = Post.new(post_params)
    @post.notice = @notice

    if @post.save
      redirect_to @notice
    else
      render 'new'
    end
  end

  def edit
    @notice = Notice.find(params[:notice_id])
    @post = Post.find(params[:post_id])
  end

  def destroy
    @post = Post.find(params[:notice_id])
    @post.destroy

    redirect_to :back
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
