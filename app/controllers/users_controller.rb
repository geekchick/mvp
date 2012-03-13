class UsersController < ApplicationController

	def index
		@user = User.find(params[:id])
		@microposts = @user.microposts.paginate(page: params[:page])
    #@title = @user.name
	
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
    @microposts = @user.microposts.paginate(page: params[:page])
	 

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

end
