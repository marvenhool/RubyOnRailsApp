class ProductsController < ApplicationController

  def index
    @prod =Product.all()
    render("products/index")
  end
end
