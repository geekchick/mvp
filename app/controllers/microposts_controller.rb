class MicropostsController < ApplicationController
	# TO DO-- before_filter :signed_in_user, only: [:create, :destroy]

  def index
		@microposts = Micropost.all
		#@comments = Comment.all

		#@microposts = Micropost.paginate(page params[:page])

 		respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @microposts }
    end
  end

  def show
		@microposts = Micropost.where(:user_id => current_user.id).page(params[:page])

		@micropost = Micropost.find(current_user.id)


    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @micropost }
    end
  end

  def new
		@micropost = Micropost.new(params[:micropost])
  end

	def create
	 	 @micropost = Micropost.new(params[:micropost])
		 @micropost.user_id = current_user.id

    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to microposts_path
    else
      #render 'static_pages/home'
    end

	end

end
