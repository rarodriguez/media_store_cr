class ProductsController < ApplicationController
	def show
	  @product = Product.find(params[:id])
	  @product.update(name: nil)
	  #render text: "HOLA MUNDO! #{@product.name.inspect}"
	end
end