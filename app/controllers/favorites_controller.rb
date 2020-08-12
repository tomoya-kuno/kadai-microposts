class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  def create
    micropost = Micropost.find(params[:favorite_id])
    current_micropost.follow(micropost)
    flash[:success] = 'お気に入り登録を完了しました。'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:favorite_id])
    current_micropost.unfollow(micropost)
    flash[:success] = 'お気に入り登録を解除しました。'
    redirect_to root_url
  end
end
