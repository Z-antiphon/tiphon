class SearchController < ApplicationController

  def index
    @categories = Category.all
    @params = params[:q]
    @q = Book.ransack(params[:q])
    @books = @q.result(distinct: true)
  end

end
