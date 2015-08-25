class ArticlesController < ApplicationController
	before_action :set_article, only: [:show, :edit, :update, :delete]

	def show
	end

	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new param_article

		if @article.save
			redirect_to article_path(@article.id)
		else
			render "new"
		end
	end

	def edit
	end

	def update
		if @article.update param_article
			redirect_to article_path(@article.id)
		else
			render "edit"
		end
	end

	def destroy
		@article.destroy

		redirect_to articles_path
	end

private

	def set_article
		@article = Article.find params[:id]
	end

	def param_article
		params.require(:article).permit(:title, :summary, :content, :category_id, :author_id)
	end

end