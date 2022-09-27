class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def dashboard
  end
end
