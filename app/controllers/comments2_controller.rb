class CommentsController < ApplicationController
	
def index
	@comments = Comment.all

		respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comments }
    end
end
	def new
		@comment = Comment.new
	end

  def create
 # @comment = Comment.new(params[:comment])

  @comment = Micropost.find(params[:micropost]).comments.build(params[:comment])

    if @comment.save
      flash[:notice] = 'Comment was successfully created.'
      redirect_to(@comment.micropost)
    else
      flash[:notice] = "Error creating comment: #{@comment.errors}"
      redirect_to(@comment.micropost)
    end
  end


end
