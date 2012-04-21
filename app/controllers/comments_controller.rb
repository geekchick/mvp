class CommentsController < ApplicationController

	def index
		@comments = Comment.all	
	end

	def new
		@comment = Comment.new(params[:comment])
	end

  def create
			@comment = Comment.new(params[:comment])
		  @comment.user_id = current_user.id
	    @comment.micropost_id = params[:micropost_id]

		  if @comment.save
				
     	 flash[:notice] = 'Comment was successfully created.'
     	 redirect_to microposts_path
   	 else
    	  flash[:notice] = "Error creating comment: #{@comment.errors}"
     	 redirect_to(@comment.micropost)
   	 end

  end

end
