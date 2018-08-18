class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(topic_id: params[:topic_id])
    redirect_to topics_path, notice: "お気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(params[:topic_id]).destroy
    redirect_to topics_path, notice: "お気に入り解除しました"
  end
end
