class StaticPagesController < ApplicationController
  def home
    @postlink = current_user.postlinks.build if logged_in?
  end

  def help
  end

  def about
  end
end
