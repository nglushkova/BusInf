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

describe CellSkedsController do

  # This should return the minimal set of attributes required to create a valid
  # CellSked. As you add validations to CellSked, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all cell_skeds as @cell_skeds" do
      cell_sked = CellSked.create! valid_attributes
      get :index
      assigns(:cell_skeds).should eq([cell_sked])
    end
  end

  describe "GET show" do
    it "assigns the requested cell_sked as @cell_sked" do
      cell_sked = CellSked.create! valid_attributes
      get :show, :id => cell_sked.id.to_s
      assigns(:cell_sked).should eq(cell_sked)
    end
  end

  describe "GET new" do
    it "assigns a new cell_sked as @cell_sked" do
      get :new
      assigns(:cell_sked).should be_a_new(CellSked)
    end
  end

  describe "GET edit" do
    it "assigns the requested cell_sked as @cell_sked" do
      cell_sked = CellSked.create! valid_attributes
      get :edit, :id => cell_sked.id.to_s
      assigns(:cell_sked).should eq(cell_sked)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CellSked" do
        expect {
          post :create, :cell_sked => valid_attributes
        }.to change(CellSked, :count).by(1)
      end

      it "assigns a newly created cell_sked as @cell_sked" do
        post :create, :cell_sked => valid_attributes
        assigns(:cell_sked).should be_a(CellSked)
        assigns(:cell_sked).should be_persisted
      end

      it "redirects to the created cell_sked" do
        post :create, :cell_sked => valid_attributes
        response.should redirect_to(CellSked.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved cell_sked as @cell_sked" do
        # Trigger the behavior that occurs when invalid params are submitted
        CellSked.any_instance.stub(:save).and_return(false)
        post :create, :cell_sked => {}
        assigns(:cell_sked).should be_a_new(CellSked)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CellSked.any_instance.stub(:save).and_return(false)
        post :create, :cell_sked => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested cell_sked" do
        cell_sked = CellSked.create! valid_attributes
        # Assuming there are no other cell_skeds in the database, this
        # specifies that the CellSked created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CellSked.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => cell_sked.id, :cell_sked => {'these' => 'params'}
      end

      it "assigns the requested cell_sked as @cell_sked" do
        cell_sked = CellSked.create! valid_attributes
        put :update, :id => cell_sked.id, :cell_sked => valid_attributes
        assigns(:cell_sked).should eq(cell_sked)
      end

      it "redirects to the cell_sked" do
        cell_sked = CellSked.create! valid_attributes
        put :update, :id => cell_sked.id, :cell_sked => valid_attributes
        response.should redirect_to(cell_sked)
      end
    end

    describe "with invalid params" do
      it "assigns the cell_sked as @cell_sked" do
        cell_sked = CellSked.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CellSked.any_instance.stub(:save).and_return(false)
        put :update, :id => cell_sked.id.to_s, :cell_sked => {}
        assigns(:cell_sked).should eq(cell_sked)
      end

      it "re-renders the 'edit' template" do
        cell_sked = CellSked.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CellSked.any_instance.stub(:save).and_return(false)
        put :update, :id => cell_sked.id.to_s, :cell_sked => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested cell_sked" do
      cell_sked = CellSked.create! valid_attributes
      expect {
        delete :destroy, :id => cell_sked.id.to_s
      }.to change(CellSked, :count).by(-1)
    end

    it "redirects to the cell_skeds list" do
      cell_sked = CellSked.create! valid_attributes
      delete :destroy, :id => cell_sked.id.to_s
      response.should redirect_to(cell_skeds_url)
    end
  end

end