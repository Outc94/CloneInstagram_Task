class FavoritesController < ApplicationController
  def index
    @favorite = Favorite.all
    @profiles = Profile.all
  end
  def create
    favorite = current_user.favorites.create(post_id: params[:post_id])
    redirect_to posts_url
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to posts_url
  end
end
