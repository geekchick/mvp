class MicropostsController < ApplicationController
	#before_filter :signed_in_user, only: [:create, :destroy]

	def index
		@microposts = Micropost.all
		@microposts = Micropost.paginate(page: params[:page])

 		respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @microposts }
    end
	end

	def show
		@micropost = Micropost.find(params[:id])
	end

	def new
		@micropost = Micropost.new
		3.times do 
			comment = @micropost.comments.build
	 end

		
	end

  def create
		 @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_path
    else
			flash[:notice] = "Error micropost comment: #{@micropost.errors}"
      redirect_to(@micropost)
    end

  end

  def destroy
  end


end
