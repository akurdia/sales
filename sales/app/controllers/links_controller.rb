class LinksController < ApplicationController
  def index 
    @links = Link.all 
  end
  
  
  def new
  @link = Link.new
  end

  def create 
  @message = Link.new(message_params) 
   
  if @message.save 
    redirect_to '/links' 
  ##else 
   ## render 'new' 
  end 
  end




  
private 
  def message_params 
    params.require(:link).permit(:link, :usermyid)  
  end
 
end
