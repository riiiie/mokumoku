class RelationshipsController < ApplicationController

  before_action :set_user, only: %i[create followings followers]
  # フォローするとき
  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end
  # フォロー外すとき
  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer  
  end
  # フォロー一覧（今回は使わない）
  def followings
    @users = user.followings
  end
  # フォロワー一覧（今回は使わない）
  def followers
    @users = user.followers
  end

  private

  def set_user
    user = User.find(params[:user_id])
  end
end
