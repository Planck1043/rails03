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
    @notice.save

    redirect_to notices_path
  end
end
