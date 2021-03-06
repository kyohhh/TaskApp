class Users::RegistrationsController < Devise::RegistrationsController
  before_action :ensure_normal_user, only: [:update, :destroy]

  # ゲストユーザーは削除できない
  def ensure_normal_user
    if resource.email == 'guest@example.com'
      redirect_to root_path, alert: 'ゲストユーザーの更新・削除はできません'
    end
  end

end