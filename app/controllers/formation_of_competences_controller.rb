# encoding: utf-8
class FormationOfCompetencesController < ApplicationController
  # GET /formation_of_competences
  # GET /formation_of_competences.json
  def index
    @formation_of_competences = FormationOfCompetence.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @formation_of_competences }
    end
  end

  # GET /formation_of_competences/1
  # GET /formation_of_competences/1.json
  def show
    @formation_of_competence = FormationOfCompetence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @formation_of_competence }
    end
  end

  # GET /formation_of_competences/new
  # GET /formation_of_competences/new.json
  def new
    @formation_of_competence = FormationOfCompetence.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @formation_of_competence }
    end
  end

  # GET /formation_of_competences/1/edit
  def edit
    @formation_of_competence = FormationOfCompetence.find(params[:id])
  end

  # POST /formation_of_competences
  # POST /formation_of_competences.json
  def create
    @formation_of_competence = FormationOfCompetence.new(params[:formation_of_competence])

    respond_to do |format|
      if @formation_of_competence.save
        format.html { redirect_to @formation_of_competence, notice: 'Запись о формировании/требовании компетенции успешно добавлена' }
        format.json { render json: @formation_of_competence, status: :created, location: @formation_of_competence }
      else
        format.html { render action: "new" }
        format.json { render json: @formation_of_competence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /formation_of_competences/1
  # PUT /formation_of_competences/1.json
  def update
    @formation_of_competence = FormationOfCompetence.find(params[:id])

    respond_to do |format|
      if @formation_of_competence.update_attributes(params[:formation_of_competence])
        format.html { redirect_to @formation_of_competence, notice: 'Запись о формировании/требовании компетенции успешно обновлена' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @formation_of_competence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formation_of_competences/1
  # DELETE /formation_of_competences/1.json
  def destroy
    @formation_of_competence = FormationOfCompetence.find(params[:id])
    @formation_of_competence.destroy

    respond_to do |format|
      format.html { redirect_to formation_of_competences_url }
      format.json { head :no_content }
    end
  end
end