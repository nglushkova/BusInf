class InterimAttestationsController < ApplicationController
  # GET /interim_attestations
  # GET /interim_attestations.json
  def index
    @interim_attestations = InterimAttestation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interim_attestations }
    end
  end

  # GET /interim_attestations/1
  # GET /interim_attestations/1.json
  def show
    @interim_attestation = InterimAttestation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @interim_attestation }
    end
  end

  # GET /interim_attestations/new
  # GET /interim_attestations/new.json
  def new
    @interim_attestation = InterimAttestation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @interim_attestation }
    end
  end

  # GET /interim_attestations/1/edit
  def edit
    @interim_attestation = InterimAttestation.find(params[:id])
  end

  # POST /interim_attestations
  # POST /interim_attestations.json
  def create
    @interim_attestation = InterimAttestation.new(params[:interim_attestation])

    respond_to do |format|
      if @interim_attestation.save
        format.html { redirect_to @interim_attestation, notice: 'Interim attestation was successfully created.' }
        format.json { render json: @interim_attestation, status: :created, location: @interim_attestation }
      else
        format.html { render action: "new" }
        format.json { render json: @interim_attestation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /interim_attestations/1
  # PUT /interim_attestations/1.json
  def update
    @interim_attestation = InterimAttestation.find(params[:id])

    respond_to do |format|
      if @interim_attestation.update_attributes(params[:interim_attestation])
        format.html { redirect_to @interim_attestation, notice: 'Interim attestation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @interim_attestation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interim_attestations/1
  # DELETE /interim_attestations/1.json
  def destroy
    @interim_attestation = InterimAttestation.find(params[:id])
    @interim_attestation.destroy

    respond_to do |format|
      format.html { redirect_to interim_attestations_url }
      format.json { head :no_content }
    end
  end
end