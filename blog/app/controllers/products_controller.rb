class ProductsController < ApplicationController

  layout 'application'
  
  def index
    @prod =Product.all()
    render("products/index")
  end
end
