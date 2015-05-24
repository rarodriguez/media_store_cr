require 'test_helper'

class Admin::ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { author: @product.author, description: @product.description, downloads: @product.downloads, name: @product.name, price: @product.price, release_date: @product.release_date, small_description: @product.small_description, store_id: @product.store_id, tags: @product.tags, version: @product.version }
    end

    assert_redirected_to admin_product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { author: @product.author, description: @product.description, downloads: @product.downloads, name: @product.name, price: @product.price, release_date: @product.release_date, small_description: @product.small_description, store_id: @product.store_id, tags: @product.tags, version: @product.version }
    assert_redirected_to admin_product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to admin_products_path
  end
end
