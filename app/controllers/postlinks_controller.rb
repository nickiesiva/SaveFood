class PostlinksController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @postlink = current_user.postlinks.build(postlink_params)
    if @postlink.save?
      flash[:success] = "Postlink created"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    
  end

  private

  def postlink_params
    params.require(:postlink).permit(:title, :link, :description)
  end
end
