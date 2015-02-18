class WelcomeController < ApplicationController

  def index
  end

  def form
  end

  def submit
    redirect_to result_path(pizza_topping: params[:pizza_topping])
  end

  def result
    @pizza_topping = params[:pizza_topping]
    if @pizza_topping.downcase == "pepperoni"
      @comment = "Nice one."
    else
      @comment = "I can't say I agree with you."
    end 
  end
end
