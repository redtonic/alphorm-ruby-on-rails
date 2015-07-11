class ArticlesController < ApplicationController
	def show
		@article = Article.find params[:id]
	end

	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new param_article

		if false #@article.save
			redirect_to show_article_path(@article.id)
		else
			render "new"
		end
	end

	def edit
	end

	def update
	end

	def delete

	end

private

	def param_article
		params.require(:article).permit(:title, :summary, :content, :category_id, :author_id)
	end

end