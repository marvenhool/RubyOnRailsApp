class ProductsController < ApplicationController

  layout 'products'


  def index
    @products =Product.all()
    render("products/index")
  end
end
