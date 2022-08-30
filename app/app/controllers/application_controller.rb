class ApplicationController < ActionController::Base
  # before_action :set_search
  include SessionsHelper

  # def set_search
  #   @search = User.ransack(params[:q]) #ransackメソッド推奨
  #   @search_users = @search.result.paginate(page: params[:page])
  # end

  private

    # ユーザーのログインを確認する
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
