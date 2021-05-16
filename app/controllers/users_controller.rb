class UsersController < ApplicationController
    before_action :authenticate_admin!, except: [ :redirect_user ]

    def index
        @user = current_user
        @users = User.all
    end 

    def redirect_user
        redirect_to root
    end

    def authenticate_admin!
        authenticate_user!
        redirect_to :root, status: :forbidden unless current_user.admin?
    end

    
end