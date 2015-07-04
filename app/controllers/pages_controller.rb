class PagesController < ApplicationController
  def home
    if user_signed_in?
      redirect_to pages_explore_url
    end
  end

  def explore
    render :explore, layout: 'explore'
  end

  def single
    if user_signed_in?
      render :single, layout: 'single'
    else
      redirect_to new_user_session_url
    end
  end

  def dashboard
    render :dashboard, layout: 'dashboard'
  end
end
