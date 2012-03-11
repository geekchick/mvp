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

  def create
	 @user = User.find(current_user.id)
   @micropost = @user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_path
    else
      render 'static_pages/home'
    end

  end

  def destroy
  end


end
