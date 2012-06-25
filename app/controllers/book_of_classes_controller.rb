class BookOfClassesController < ApplicationController
  # GET /book_of_classes
  # GET /book_of_classes.json
  def index
    @book_of_classes = BookOfClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_of_classes }
    end
  end

  # GET /book_of_classes/1
  # GET /book_of_classes/1.json
  def show
    @book_of_class = BookOfClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_of_class }
    end
  end

  # GET /book_of_classes/new
  # GET /book_of_classes/new.json
  def new
    @book_of_class = BookOfClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_of_class }
    end
  end

  # GET /book_of_classes/1/edit
  def edit
    @book_of_class = BookOfClass.find(params[:id])
  end

  # POST /book_of_classes
  # POST /book_of_classes.json
  def create
    @book_of_class = BookOfClass.new(params[:book_of_class])

    respond_to do |format|
      if @book_of_class.save
        format.html { redirect_to @book_of_class, notice: 'Book of class was successfully created.' }
        format.json { render json: @book_of_class, status: :created, location: @book_of_class }
      else
        format.html { render action: "new" }
        format.json { render json: @book_of_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_of_classes/1
  # PUT /book_of_classes/1.json
  def update
    @book_of_class = BookOfClass.find(params[:id])

    respond_to do |format|
      if @book_of_class.update_attributes(params[:book_of_class])
        format.html { redirect_to @book_of_class, notice: 'Book of class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_of_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_of_classes/1
  # DELETE /book_of_classes/1.json
  def destroy
    @book_of_class = BookOfClass.find(params[:id])
    @book_of_class.destroy

    respond_to do |format|
      format.html { redirect_to book_of_classes_url }
      format.json { head :no_content }
    end
  end
end
