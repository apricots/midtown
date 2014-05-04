class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save && params[:_method] == "post"
      flash[:notice] = "Added friend."
      redirect_to :back
    elsif @friendship.save && params[:_method] == "destroy"
      flash[:error] = "Deleted Friend"
      redirect_to :back
    else
      flash[:error] = "Unable to add friend."
      redirect_to root_url
    end
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    binding.pry
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to current_user
  end

  def index
  end

end
