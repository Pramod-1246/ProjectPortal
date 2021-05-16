class HomeController < ApplicationController

  before_action :authenticate_user!, except: [:redirect_login]
  before_action :authenticate_user, except: [:index]

  def index
    @user = current_user
    redirect_to projects_path
  end

  def redirect_login
    redirect_to new_user_session
  end
end
