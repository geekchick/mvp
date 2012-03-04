class BasketballProfilesController < ApplicationController
  # GET /basketball_profiles
  # GET /basketball_profiles.xml
  def index
    @basketball_profiles = BasketballProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @basketball_profiles }
    end
  end

  # GET /basketball_profiles/1
  # GET /basketball_profiles/1.xml
  def show
    @basketball_profile = BasketballProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @basketball_profile }
    end
  end

  # GET /basketball_profiles/new
  # GET /basketball_profiles/new.xml
  def new
    @basketball_profile = BasketballProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @basketball_profile }
    end
  end

  # GET /basketball_profiles/1/edit
  def edit
    @basketball_profile = BasketballProfile.find(params[:id])
  end

  # POST /basketball_profiles
  # POST /basketball_profiles.xml
  def create
    @basketball_profile = BasketballProfile.new(params[:basketball_profile])
		@basketball_profile.user_id = current_user.id

    respond_to do |format|
      if @basketball_profile.save
        format.html { redirect_to(@basketball_profile, :notice => 'Basketball profile was successfully created.') }
        format.xml  { render :xml => @basketball_profile, :status => :created, :location => @basketball_profile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @basketball_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /basketball_profiles/1
  # PUT /basketball_profiles/1.xml
  def update
    @basketball_profile = BasketballProfile.find(params[:id])

    respond_to do |format|
      if @basketball_profile.update_attributes(params[:basketball_profile])
        format.html { redirect_to(@basketball_profile, :notice => 'Basketball profile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @basketball_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /basketball_profiles/1
  # DELETE /basketball_profiles/1.xml
  def destroy
    @basketball_profile = BasketballProfile.find(params[:id])
    @basketball_profile.destroy

    respond_to do |format|
      format.html { redirect_to(basketball_profiles_url) }
      format.xml  { head :ok }
    end
  end

end
