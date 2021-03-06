require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FormationOfCompetencesController do

  # This should return the minimal set of attributes required to create a valid
  # FormationOfCompetence. As you add validations to FormationOfCompetence, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all formation_of_competences as @formation_of_competences" do
      formation_of_competence = FormationOfCompetence.create! valid_attributes
      get :index
      assigns(:formation_of_competences).should eq([formation_of_competence])
    end
  end

  describe "GET show" do
    it "assigns the requested formation_of_competence as @formation_of_competence" do
      formation_of_competence = FormationOfCompetence.create! valid_attributes
      get :show, :id => formation_of_competence.id.to_s
      assigns(:formation_of_competence).should eq(formation_of_competence)
    end
  end

  describe "GET new" do
    it "assigns a new formation_of_competence as @formation_of_competence" do
      get :new
      assigns(:formation_of_competence).should be_a_new(FormationOfCompetence)
    end
  end

  describe "GET edit" do
    it "assigns the requested formation_of_competence as @formation_of_competence" do
      formation_of_competence = FormationOfCompetence.create! valid_attributes
      get :edit, :id => formation_of_competence.id.to_s
      assigns(:formation_of_competence).should eq(formation_of_competence)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FormationOfCompetence" do
        expect {
          post :create, :formation_of_competence => valid_attributes
        }.to change(FormationOfCompetence, :count).by(1)
      end

      it "assigns a newly created formation_of_competence as @formation_of_competence" do
        post :create, :formation_of_competence => valid_attributes
        assigns(:formation_of_competence).should be_a(FormationOfCompetence)
        assigns(:formation_of_competence).should be_persisted
      end

      it "redirects to the created formation_of_competence" do
        post :create, :formation_of_competence => valid_attributes
        response.should redirect_to(FormationOfCompetence.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved formation_of_competence as @formation_of_competence" do
        # Trigger the behavior that occurs when invalid params are submitted
        FormationOfCompetence.any_instance.stub(:save).and_return(false)
        post :create, :formation_of_competence => {}
        assigns(:formation_of_competence).should be_a_new(FormationOfCompetence)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FormationOfCompetence.any_instance.stub(:save).and_return(false)
        post :create, :formation_of_competence => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested formation_of_competence" do
        formation_of_competence = FormationOfCompetence.create! valid_attributes
        # Assuming there are no other formation_of_competences in the database, this
        # specifies that the FormationOfCompetence created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FormationOfCompetence.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => formation_of_competence.id, :formation_of_competence => {'these' => 'params'}
      end

      it "assigns the requested formation_of_competence as @formation_of_competence" do
        formation_of_competence = FormationOfCompetence.create! valid_attributes
        put :update, :id => formation_of_competence.id, :formation_of_competence => valid_attributes
        assigns(:formation_of_competence).should eq(formation_of_competence)
      end

      it "redirects to the formation_of_competence" do
        formation_of_competence = FormationOfCompetence.create! valid_attributes
        put :update, :id => formation_of_competence.id, :formation_of_competence => valid_attributes
        response.should redirect_to(formation_of_competence)
      end
    end

    describe "with invalid params" do
      it "assigns the formation_of_competence as @formation_of_competence" do
        formation_of_competence = FormationOfCompetence.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FormationOfCompetence.any_instance.stub(:save).and_return(false)
        put :update, :id => formation_of_competence.id.to_s, :formation_of_competence => {}
        assigns(:formation_of_competence).should eq(formation_of_competence)
      end

      it "re-renders the 'edit' template" do
        formation_of_competence = FormationOfCompetence.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FormationOfCompetence.any_instance.stub(:save).and_return(false)
        put :update, :id => formation_of_competence.id.to_s, :formation_of_competence => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested formation_of_competence" do
      formation_of_competence = FormationOfCompetence.create! valid_attributes
      expect {
        delete :destroy, :id => formation_of_competence.id.to_s
      }.to change(FormationOfCompetence, :count).by(-1)
    end

    it "redirects to the formation_of_competences list" do
      formation_of_competence = FormationOfCompetence.create! valid_attributes
      delete :destroy, :id => formation_of_competence.id.to_s
      response.should redirect_to(formation_of_competences_url)
    end
  end

end
