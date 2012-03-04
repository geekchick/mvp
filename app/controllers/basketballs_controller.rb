class BasketballsController < ApplicationController
  # GET /basketballs
  # GET /basketballs.xml
  def index
    @basketballs = Basketball.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @basketballs }
    end
  end

  # GET /basketballs/1
  # GET /basketballs/1.xml
  def show
    @basketball = Basketball.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @basketball }
    end
  end

  # GET /basketballs/new
  # GET /basketballs/new.xml
  def new
    @basketball = Basketball.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @basketball }
    end
  end

  # GET /basketballs/1/edit
  def edit
    @basketball = Basketball.find(params[:id])
  end

  # POST /basketballs
  # POST /basketballs.xml
  def create
    @basketball = Basketball.new(params[:basketball])
		@basketball.user_id = current_user.id

    respond_to do |format|
      if @basketball.save
        format.html { redirect_to(@basketball, :notice => 'Basketball was successfully created.') }
        format.xml  { render :xml => @basketball, :status => :created, :location => @basketball }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @basketball.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /basketballs/1
  # PUT /basketballs/1.xml
  def update
    @basketball = Basketball.find(params[:id])

    respond_to do |format|
      if @basketball.update_attributes(params[:basketball])
        format.html { redirect_to(@basketball, :notice => 'Basketball was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @basketball.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /basketballs/1
  # DELETE /basketballs/1.xml
  def destroy
    @basketball = Basketball.find(params[:id])
    @basketball.destroy

    respond_to do |format|
      format.html { redirect_to(basketballs_url) }
      format.xml  { head :ok }
    end
  end
end
