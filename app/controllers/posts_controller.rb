class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
	  @post = Post.find(params[:id])
<<<<<<< HEAD
	  #permit is for extra protection of security.
	  #require is for the key of nested.
	  @post.update(params.require(:post).permit(:title, :description))
=======
	  @post.update(params)
>>>>>>> 094c0c4b584de35cb6bc67ba91bf3c693e76ff0e
	  redirect_to post_path(@post)
	end
end