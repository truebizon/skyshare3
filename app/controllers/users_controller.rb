class UsersController < ApplicationController
    def show
      user = User.find(params[:id])
      @nickname = current_user.nickname
      @skies = user.skies.page(params[:page]).per(5).order("created_at DESC")
    end
end
