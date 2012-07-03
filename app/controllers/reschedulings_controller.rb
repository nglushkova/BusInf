class ReschedulingsController < ApplicationController
  # GET /reschedulings
  # GET /reschedulings.json
  def index
    @reschedulings = Rescheduling.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reschedulings }
    end
  end

  # GET /reschedulings/1
  # GET /reschedulings/1.json
  def show
    @rescheduling = Rescheduling.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rescheduling }
    end
  end

  # GET /reschedulings/new
  # GET /reschedulings/new.json
  def new
    @rescheduling = Rescheduling.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rescheduling }
    end
  end

  # GET /reschedulings/1/edit
  def edit
    @rescheduling = Rescheduling.find(params[:id])
  end

  # POST /reschedulings
  # POST /reschedulings.json
  def create
    @rescheduling = Rescheduling.new(params[:rescheduling])

    respond_to do |format|
      if @rescheduling.save
        format.html { redirect_to @rescheduling, notice: 'Rescheduling was successfully created.' }
        format.json { render json: @rescheduling, status: :created, location: @rescheduling }
      else
        format.html { render action: "new" }
        format.json { render json: @rescheduling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reschedulings/1
  # PUT /reschedulings/1.json
  def update
    @rescheduling = Rescheduling.find(params[:id])

    respond_to do |format|
      if @rescheduling.update_attributes(params[:rescheduling])
        format.html { redirect_to @rescheduling, notice: 'Rescheduling was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rescheduling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reschedulings/1
  # DELETE /reschedulings/1.json
  def destroy
    @rescheduling = Rescheduling.find(params[:id])
    @rescheduling.destroy

    respond_to do |format|
      format.html { redirect_to reschedulings_url }
      format.json { head :no_content }
    end
  end
end
