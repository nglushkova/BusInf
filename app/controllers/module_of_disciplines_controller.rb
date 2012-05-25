class ModuleOfDisciplinesController < ApplicationController
  # GET /module_of_disciplines
  # GET /module_of_disciplines.json
  def index
    @module_of_disciplines = ModuleOfDiscipline.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @module_of_disciplines }
    end
  end

  # GET /module_of_disciplines/1
  # GET /module_of_disciplines/1.json
  def show
    @module_of_discipline = ModuleOfDiscipline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @module_of_discipline }
    end
  end

  # GET /module_of_disciplines/new
  # GET /module_of_disciplines/new.json
  def new
    @module_of_discipline = ModuleOfDiscipline.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @module_of_discipline }
    end
  end

  # GET /module_of_disciplines/1/edit
  def edit
    @module_of_discipline = ModuleOfDiscipline.find(params[:id])
  end

  # POST /module_of_disciplines
  # POST /module_of_disciplines.json
  def create
    @module_of_discipline = ModuleOfDiscipline.new(params[:module_of_discipline])

    respond_to do |format|
      if @module_of_discipline.save
        format.html { redirect_to @module_of_discipline, notice: 'Module of discipline was successfully created.' }
        format.json { render json: @module_of_discipline, status: :created, location: @module_of_discipline }
      else
        format.html { render action: "new" }
        format.json { render json: @module_of_discipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /module_of_disciplines/1
  # PUT /module_of_disciplines/1.json
  def update
    @module_of_discipline = ModuleOfDiscipline.find(params[:id])

    respond_to do |format|
      if @module_of_discipline.update_attributes(params[:module_of_discipline])
        format.html { redirect_to @module_of_discipline, notice: 'Module of discipline was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @module_of_discipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /module_of_disciplines/1
  # DELETE /module_of_disciplines/1.json
  def destroy
    @module_of_discipline = ModuleOfDiscipline.find(params[:id])
    @module_of_discipline.destroy

    respond_to do |format|
      format.html { redirect_to module_of_disciplines_url }
      format.json { head :no_content }
    end
  end
end