class BookOfVisitsController < ApplicationController
  # GET /book_of_visits
  # GET /book_of_visits.json
  def index
    @book_of_visits = BookOfVisit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_of_visits }
    end
  end

  # GET /book_of_visits/1
  # GET /book_of_visits/1.json
  def show
    @book_of_visit = BookOfVisit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_of_visit }
    end
  end

  # GET /book_of_visits/new
  # GET /book_of_visits/new.json
  def new
    @book_of_visit = BookOfVisit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_of_visit }
    end
  end

  # GET /book_of_visits/1/edit
  def edit
    @book_of_visit = BookOfVisit.find(params[:id])
  end

  # POST /book_of_visits
  # POST /book_of_visits.json
  def create
    @book_of_visit = BookOfVisit.new(params[:book_of_visit])

    respond_to do |format|
      if @book_of_visit.save
        format.html { redirect_to @book_of_visit, notice: 'Book of visit was successfully created.' }
        format.json { render json: @book_of_visit, status: :created, location: @book_of_visit }
      else
        format.html { render action: "new" }
        format.json { render json: @book_of_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_of_visits/1
  # PUT /book_of_visits/1.json
  def update
    @book_of_visit = BookOfVisit.find(params[:id])

    respond_to do |format|
      if @book_of_visit.update_attributes(params[:book_of_visit])
        format.html { redirect_to @book_of_visit, notice: 'Book of visit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_of_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_of_visits/1
  # DELETE /book_of_visits/1.json
  def destroy
    @book_of_visit = BookOfVisit.find(params[:id])
    @book_of_visit.destroy

    respond_to do |format|
      format.html { redirect_to book_of_visits_url }
      format.json { head :no_content }
    end
  end
end
