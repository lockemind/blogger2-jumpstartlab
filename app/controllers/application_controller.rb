class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  	@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])

		@comment = Comment.new
		@comment.article_id = @article.id

		
	end

	def new
		@article = Article.new
	end
end
