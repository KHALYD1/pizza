class PizzasController < ApplicationController
  def index
    render json: Pizza.all
  end

  def show
    pizzas = Pizza.find_by(id: params[:id])
    if pizzas
      render json: pizzas
    else
      render json: {error: "Bird not found"}, status: :not_found
    end

  end
end
