class ApplicationController < ActionController::Base
  # devise利用機能の実行前に:configure_permitted_parameters メソッドを実行
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :user_state, only: [:create]
  
  

  def after_sign_up_path_for(resource)
    support_path
  end

  def after_sign_in_path_for(resource)
    mypage_path
  end

  protected
  # 既存keyを email → name に変更したので、emailの保存許可を行う。
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :encrypted_password])
  end

  # 退会確認
  #def user_state
   ## 入力されたnameからアカウントを特定
  # @user = User.find_by(name: params[:user][:name])
   ## 取得できなければメソッド終了
  # return if !@user
   ## 取得したアカウントの入力内容が一致しているか,またis_deletedの値はfalse[create]か
  # if @user.valid_password?(params[:user][:encrypted_password]) && (@user.unsubscribe == true)
  #  flash[:notice] = "退会済みです。再度ご登録をしてご利用ください。"
  #  redirect_to new_user_registration_path
  # else
  #   flash[:notice] = "項目を入力してください。"
  # end
  #end
end
