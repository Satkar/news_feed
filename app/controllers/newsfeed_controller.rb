class NewsfeedController < ApplicationController
	def index
		render json: Post.fetch_records(params[:page_number])
	end
end
