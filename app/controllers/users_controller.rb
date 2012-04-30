class UsersController < ApplicationController

	helper :all


	def index
		#@users = User.all
		@user = User.find(params[:id])
		#@microposts = @user.microposts.paginate(page: params[:page])
    #@title = @user.name
		#@user = User.find(current_user.id)
		
	end

	def new
		@user = User.new

   respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
   end
	
	end

	def create
		@user = User.find(params[:id])

		#@microposts = Micropost.find(params[:micropost_id])
		@microposts = @user.microposts.paginate(page: params[:page])

		@user.update_attributes(params[:user])

 		respond_to do |format|
   
		if @user.save
       format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
	end

  def edit
		 @user = User.find(current_user.id)
  end

	def show
		@user = User.find(params[:id])
		@microposts = @user.microposts.page(params[:page]).per(5)
    
		
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
	end

	def update
		@user = User.find(params[:id])

 respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
	end

	def user_criteria
		@user = User.find(current_user.id)
		@user.update_attributes(params[:user])
	end

	def basketball_personal
		@user = User.find(current_user.id)
	end

	
	def basketball_stats
		@user = User.find(current_user.id)
		@heights = ["4'8", "4'9", "4'10", "4'11", "5'0", "5'1", "5'2", "5'3", "5'4", "5'5", "5'6", "5'7", "5'8", "5'9", "5'10", "5'11", "6'0", "6'1", "6'2", "6'3", "6'4", "6'5", "6'6", "6'7", "6'8", "6'9", "6'10", "6'11", "7'0", "7'1", "7'2", "7'3", "7'4", "7'5", "7'6"]
		
	end

	
	def basketball_video
		@basketball_video = User.new
		@user = User.find(current_user.id)
	end

	def baseball_personal
		@user = User.find(current_user.id)
	end

	
	def baseball_stats
		@user = User.find(current_user.id)
	end

	def baseball_video
		@user = User.find(current_user.id)
	end

	def profile
		@user = User.find(current_user.id)
	end

end
