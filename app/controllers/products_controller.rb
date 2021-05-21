class ProductsController < ApplicationController
  
  def index 
    @products = Product.all 
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    @product.save
  end

  private
  
  def product_params
    params.require(:product).permit(:description, :quantity, :price)
  end
end