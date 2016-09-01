class SpentsController < ApplicationController
  before_action :set_spent, only:[:show]

  def index 
    @spents = Spent.all

  end

  def new
    @spent = Spent.new
  end

  def create
    @spent = Spent.new(spent_params)
    @spent.user_id = current_user.id
    
    if @spent.save
      redirect_to @spent, notice: 'Your spent was created sucessfully'
    else
      render :new
    end
  end

  def show 
   
  end
  
  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def spent_params
    params.require(:spent).permit(:value, :date, :description)
  end
  
  def set_spent 
     @spent = Spent.find(params[:id]) 
  end
end
