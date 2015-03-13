class ProductsController < ApplicationController

  layout 'products'


  def index
    @prod =Product.all()
    render("products/index")
  end
end
