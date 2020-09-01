class PagesController < ApplicationController

  def home
    if current_user.renter?
      render 'welcome'
    else
      @fake_data = [10.4,2.4,1.2,3.5,1.7,7.3]
    end
  end
end
