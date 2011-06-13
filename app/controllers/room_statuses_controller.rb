class RoomStatusesController < ApplicationController
  # GET /room_statuses
  # GET /room_statuses.xml
  def index
    @room_statuses = RoomStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @room_statuses }
    end
  end

  # GET /room_statuses/1
  # GET /room_statuses/1.xml
  def show
    @room_status = RoomStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @room_status }
    end
  end

  # GET /room_statuses/new
  # GET /room_statuses/new.xml
  def new
    @room_status = RoomStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @room_status }
    end
  end

  # GET /room_statuses/1/edit
  def edit
    @room_status = RoomStatus.find(params[:id])
  end

  # POST /room_statuses
  # POST /room_statuses.xml
  def create
    @room_status = RoomStatus.new(params[:room_status])

    respond_to do |format|
      if @room_status.save
        format.html { redirect_to(@room_status, :notice => 'Room status was successfully created.') }
        format.xml  { render :xml => @room_status, :status => :created, :location => @room_status }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @room_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /room_statuses/1
  # PUT /room_statuses/1.xml
  def update
    @room_status = RoomStatus.find(params[:id])

    respond_to do |format|
      if @room_status.update_attributes(params[:room_status])
        format.html { redirect_to(@room_status, :notice => 'Room status was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @room_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /room_statuses/1
  # DELETE /room_statuses/1.xml
  def destroy
    @room_status = RoomStatus.find(params[:id])
    @room_status.destroy

    respond_to do |format|
      format.html { redirect_to(room_statuses_url) }
      format.xml  { head :ok }
    end
  end
end
