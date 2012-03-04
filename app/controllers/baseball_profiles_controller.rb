class BaseballProfilesController < ApplicationController
  # GET /baseball_profiles
  # GET /baseball_profiles.xml
  def index
    @baseball_profiles = BaseballProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @baseball_profiles }
    end
  end

  # GET /baseball_profiles/1
  # GET /baseball_profiles/1.xml
  def show
    @baseball_profile = BaseballProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @baseball_profile }
    end
  end

  # GET /baseball_profiles/new
  # GET /baseball_profiles/new.xml
  def new
    @baseball_profile = BaseballProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @baseball_profile }
    end
  end

  # GET /baseball_profiles/1/edit
  def edit
    @baseball_profile = BaseballProfile.find(params[:id])
  end

  # POST /baseball_profiles
  # POST /baseball_profiles.xml
  def create
    @baseball_profile = BaseballProfile.new(params[:baseball_profile])
		@baseball_profile.user_id = current_user.id

    respond_to do |format|
      if @baseball_profile.save
        format.html { redirect_to(@baseball_profile, :notice => 'Baseball profile was successfully created.') }
        format.xml  { render :xml => @baseball_profile, :status => :created, :location => @baseball_profile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @baseball_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /baseball_profiles/1
  # PUT /baseball_profiles/1.xml
  def update
    @baseball_profile = BaseballProfile.find(params[:id])

    respond_to do |format|
      if @baseball_profile.update_attributes(params[:baseball_profile])
        format.html { redirect_to(@baseball_profile, :notice => 'Baseball profile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @baseball_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /baseball_profiles/1
  # DELETE /baseball_profiles/1.xml
  def destroy
    @baseball_profile = BaseballProfile.find(params[:id])
    @baseball_profile.destroy

    respond_to do |format|
      format.html { redirect_to(baseball_profiles_url) }
      format.xml  { head :ok }
    end
  end
end
