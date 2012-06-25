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

describe ReschedulingsController do

  # This should return the minimal set of attributes required to create a valid
  # Rescheduling. As you add validations to Rescheduling, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all reschedulings as @reschedulings" do
      rescheduling = Rescheduling.create! valid_attributes
      get :index
      assigns(:reschedulings).should eq([rescheduling])
    end
  end

  describe "GET show" do
    it "assigns the requested rescheduling as @rescheduling" do
      rescheduling = Rescheduling.create! valid_attributes
      get :show, :id => rescheduling.id.to_s
      assigns(:rescheduling).should eq(rescheduling)
    end
  end

  describe "GET new" do
    it "assigns a new rescheduling as @rescheduling" do
      get :new
      assigns(:rescheduling).should be_a_new(Rescheduling)
    end
  end

  describe "GET edit" do
    it "assigns the requested rescheduling as @rescheduling" do
      rescheduling = Rescheduling.create! valid_attributes
      get :edit, :id => rescheduling.id.to_s
      assigns(:rescheduling).should eq(rescheduling)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Rescheduling" do
        expect {
          post :create, :rescheduling => valid_attributes
        }.to change(Rescheduling, :count).by(1)
      end

      it "assigns a newly created rescheduling as @rescheduling" do
        post :create, :rescheduling => valid_attributes
        assigns(:rescheduling).should be_a(Rescheduling)
        assigns(:rescheduling).should be_persisted
      end

      it "redirects to the created rescheduling" do
        post :create, :rescheduling => valid_attributes
        response.should redirect_to(Rescheduling.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved rescheduling as @rescheduling" do
        # Trigger the behavior that occurs when invalid params are submitted
        Rescheduling.any_instance.stub(:save).and_return(false)
        post :create, :rescheduling => {}
        assigns(:rescheduling).should be_a_new(Rescheduling)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Rescheduling.any_instance.stub(:save).and_return(false)
        post :create, :rescheduling => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested rescheduling" do
        rescheduling = Rescheduling.create! valid_attributes
        # Assuming there are no other reschedulings in the database, this
        # specifies that the Rescheduling created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Rescheduling.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => rescheduling.id, :rescheduling => {'these' => 'params'}
      end

      it "assigns the requested rescheduling as @rescheduling" do
        rescheduling = Rescheduling.create! valid_attributes
        put :update, :id => rescheduling.id, :rescheduling => valid_attributes
        assigns(:rescheduling).should eq(rescheduling)
      end

      it "redirects to the rescheduling" do
        rescheduling = Rescheduling.create! valid_attributes
        put :update, :id => rescheduling.id, :rescheduling => valid_attributes
        response.should redirect_to(rescheduling)
      end
    end

    describe "with invalid params" do
      it "assigns the rescheduling as @rescheduling" do
        rescheduling = Rescheduling.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Rescheduling.any_instance.stub(:save).and_return(false)
        put :update, :id => rescheduling.id.to_s, :rescheduling => {}
        assigns(:rescheduling).should eq(rescheduling)
      end

      it "re-renders the 'edit' template" do
        rescheduling = Rescheduling.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Rescheduling.any_instance.stub(:save).and_return(false)
        put :update, :id => rescheduling.id.to_s, :rescheduling => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested rescheduling" do
      rescheduling = Rescheduling.create! valid_attributes
      expect {
        delete :destroy, :id => rescheduling.id.to_s
      }.to change(Rescheduling, :count).by(-1)
    end

    it "redirects to the reschedulings list" do
      rescheduling = Rescheduling.create! valid_attributes
      delete :destroy, :id => rescheduling.id.to_s
      response.should redirect_to(reschedulings_url)
    end
  end

end