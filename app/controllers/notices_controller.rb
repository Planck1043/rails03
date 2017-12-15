class NoticesController < ApplicationController
  def index
    @notices = Notice.all
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(
      :title => params[:notice][:title],
      :text => params[:notice][:text]
      )

    if @notice.save
      redirect_to notices_path
    else
      render 'new'
    end
  end

  def show
    @notice = Notice.find(params[:id])
  end

  def edit
    @notice = Notice.find(params[:id])
  end

  def update
    @notice = Notice.find(params[:id])

    if @notice.update(
      :title => params[:notice][:title],
      :text => params[:notice][:text]
      )
      redirect_to notice_path
    else
      render 'edit'
    end
  end

  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy

    redirect_to notices_path
  end
end
