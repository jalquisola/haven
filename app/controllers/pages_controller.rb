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
    render :single, layout: 'single'
  end
end
