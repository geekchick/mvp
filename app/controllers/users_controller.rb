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
