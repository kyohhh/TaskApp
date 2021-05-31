class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      # 新規登録時にnicknameの取得を許可
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      # 情報更新時にnicknameの取得を許可
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end

end
