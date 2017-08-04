class ItemsController < ApplicationController

  def show
    @items = Item.all
  end 

  def new
  	@item = Item.new
  end
  
  def create
    @item = current_user.items.build
    
    if @item.save
      flash[:notice] = "Item saved."
      redirect_to current_user
    else
      flash[:error] = "Error saving item. Please try again."
      render :new
    end
  end

  def destroy
  	@item.destroy
  	redirect_to root_path
  end

  private

  	def item_params
  		params.require(:item).permit(:user)
  	end
      
end
