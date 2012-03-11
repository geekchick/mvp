class CommentsController < ApplicationController
	
	def new
		@comment = Comment.new
	end

  def create
			@micropost = Micropost.find(params[:micropost_id])
			flash[:notice] = "Added your comment"
		
  end


end
