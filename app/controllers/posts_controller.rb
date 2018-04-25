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
		#communicate w/ database and redirect
		@post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
		#can check in console with Post.last
		redirect to post_path
	end
end
