class UsersController < ApplicationController 

  def show
    @user = User.find_by_username(params[:username])
    @tweets = @user.tweets.order(created_at: :desc)
    @tweet = Tweet.new
  end

  def following
    @user  = User.find_by_username(params[:username])
    @users = @user.following.paginate(page: params[:page])
    render 'following_follower'
  end

  def followers
    @user  = User.find_by_username(params[:username])
    @users = @user.followers.paginate(page: params[:page])
    render 'following_follower'
  end
end
