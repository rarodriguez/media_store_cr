class StoresController < ApplicationController
  layout 'application_public'

  def index
    @stores = Store.all
    @default_store = @stores.first
  end

  def add_cart
    product = Product.find(params[:id])
    session[:cart] = {} if session[:cart].blank?
    if session[:cart].has_key?(product.id.to_s)
      session[:cart][product.id.to_s] += 1
    else
      session[:cart][product.id.to_s] = 1
    end
    redirect_to root_path, notice: "Producto '#{product.name}' agregado al carrito"
  end

  def view_cart
    cart_elements = session[:cart] || {}
    @elements = {}
    cart_elements.each_pair do |elem, count|
      @elements[elem] = {product: Product.where(id: elem).first, count: count}
    end
  end

end
