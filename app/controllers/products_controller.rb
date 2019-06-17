class ProductsController < ApplicationController

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to category_path
  end

  def show
  @product Product.find(params[:id])
end

def destroy
   @product = Product.find(params[:id])
   @product.destroy
   redirect_to category_path
 end

  private
  def product_params
    params.require(:prodcut).permit(:name, :price)
  end
end
