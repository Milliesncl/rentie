class PagesController < ApplicationController
  def home
    if current_user.renter?
      render 'welcome'
    end
  end
end
