class StaticController < ApplicationController
  # Page racine
  # de notre site web.
  def index
  	@articles = Article.all
  end
end
