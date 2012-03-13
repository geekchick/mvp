class MicropostsController < ApplicationController
	# TO DO-- before_filter :signed_in_user, only: [:create, :destroy]


  def index
		@microposts = Micropost.all
  end

  def show
		@microposts = Micropost.all
		#@micropost = Micropost.find(params[:id])
		
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @micropost }
    end
  end

  def new
		@micropost = Micropost.new
  end

	def create
	 	 @micropost = Micropost.new(params[:micropost])
		 @micropost.user_id = current_user.id

    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_path
    else
      #render 'static_pages/home'
    end

	end

end
