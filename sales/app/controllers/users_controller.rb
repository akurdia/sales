class UsersController < ApplicationController
  def new
  @user = User.new
  end

  def create 
  @message = User.new(message_params) 
  if @message.save 
    redirect_to :root
  ##else 
   ## render 'new' 
    end
  end
  
  
  
  def show 
  	@user= User.find_by_myid(params[:id])
    @links = Link.where("usermyid"=> @user.myid)
 
	end
  
 
private 
  def message_params 
    params.require(:user).permit(:username, :myid)  
  end 
    
end
