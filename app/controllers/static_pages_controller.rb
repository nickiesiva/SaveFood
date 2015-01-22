class StaticPagesController < ApplicationController
  def home
    @postlink = current_user.postlinks.build if logged_in?
    @feed_items = current_user.feed.paginate(page: params[:page], per_page: 7)
  end

  def help
  end

  def about
  end
end
