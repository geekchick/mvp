class CommentsController < ApplicationController
  def create
	  @comment = Comment.new(params[:comment])
    @comment.user_id = current_user.id
		#@micropost = Micropost.find(params[:micropost_id])
    @comment.micropost_id = params[:micropost_id]


		  if @comment.save
				
     	 flash[:notice] = 'Comment was successfully created.'
     	 redirect_to root_path
   	 else
    	  flash[:notice] = "Error creating comment: #{@comment.errors}"
     	 redirect_to(@comment.micropost)
   	 end

  end

end
