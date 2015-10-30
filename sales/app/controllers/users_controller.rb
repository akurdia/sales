class UsersController < ApplicationController
  def new
  @user = User.new
  end

  def create 
  @message = User.new(message_params) 
  if @message.save 
    redirect_to '/user' 
  ##else 
   ## render 'new' 
  end 
  end

    
end
