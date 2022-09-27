class RelationshipsController < ApplicationController
  def create
    # @user = User.find(params[:followed_id])
    # current_user.follow(@user)
    # redirect_to request.referer
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end

  def destroy
    # user = Relationship.find(params[:id]).followed
    # current_user.unfollow(user)
    # redirect_to request.referer
    current_user.unfollow(params[:user_id])
    redirect_to request.referer
  end


end
