class NewsfeedController < ApplicationController
	def index
		render json: Post.includes(:comments)
	end
end
