class UsersController < ApplicationController

  def mypage
    @lists = List.all
    @user = current_user
  end

# 退会アクション
  def unsubscribe
    @user = current_user
    # unsubscribeをtrueに変更-削除
    @user.update(unsubscribe: true)
    reset_session
    redirect_to root_path, notice: '退会処理を実行致しました'
  end

# 退会後、ステータスを更新
  def withdrawal
  end

# ユーザー情報編集
  def edit
    @user = current_user
  end

# ユーザー情報更新
  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to mypage_path, notice: "更新されました"
    else
      render :edit
    end
  end

# 外部ユーザー一覧
  def index
    @users = User.all
  end

# 外部ユーザー閲覧
  def others
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end
end
