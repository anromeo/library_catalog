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

describe PatronsController do

  # This should return the minimal set of attributes required to create a valid
  # Patron. As you add validations to Patron, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "firstname" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PatronsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all patrons as @patrons" do
      patron = Patron.create! valid_attributes
      get :index, {}, valid_session
      assigns(:patrons).should eq([patron])
    end
  end

  describe "GET show" do
    it "assigns the requested patron as @patron" do
      patron = Patron.create! valid_attributes
      get :show, {:id => patron.to_param}, valid_session
      assigns(:patron).should eq(patron)
    end
  end

  describe "GET new" do
    it "assigns a new patron as @patron" do
      get :new, {}, valid_session
      assigns(:patron).should be_a_new(Patron)
    end
  end

  describe "GET edit" do
    it "assigns the requested patron as @patron" do
      patron = Patron.create! valid_attributes
      get :edit, {:id => patron.to_param}, valid_session
      assigns(:patron).should eq(patron)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Patron" do
        expect {
          post :create, {:patron => valid_attributes}, valid_session
        }.to change(Patron, :count).by(1)
      end

      it "assigns a newly created patron as @patron" do
        post :create, {:patron => valid_attributes}, valid_session
        assigns(:patron).should be_a(Patron)
        assigns(:patron).should be_persisted
      end

      it "redirects to the created patron" do
        post :create, {:patron => valid_attributes}, valid_session
        response.should redirect_to(Patron.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved patron as @patron" do
        # Trigger the behavior that occurs when invalid params are submitted
        Patron.any_instance.stub(:save).and_return(false)
        post :create, {:patron => { "firstname" => "invalid value" }}, valid_session
        assigns(:patron).should be_a_new(Patron)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Patron.any_instance.stub(:save).and_return(false)
        post :create, {:patron => { "firstname" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested patron" do
        patron = Patron.create! valid_attributes
        # Assuming there are no other patrons in the database, this
        # specifies that the Patron created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Patron.any_instance.should_receive(:update_attributes).with({ "firstname" => "MyString" })
        put :update, {:id => patron.to_param, :patron => { "firstname" => "MyString" }}, valid_session
      end

      it "assigns the requested patron as @patron" do
        patron = Patron.create! valid_attributes
        put :update, {:id => patron.to_param, :patron => valid_attributes}, valid_session
        assigns(:patron).should eq(patron)
      end

      it "redirects to the patron" do
        patron = Patron.create! valid_attributes
        put :update, {:id => patron.to_param, :patron => valid_attributes}, valid_session
        response.should redirect_to(patron)
      end
    end

    describe "with invalid params" do
      it "assigns the patron as @patron" do
        patron = Patron.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Patron.any_instance.stub(:save).and_return(false)
        put :update, {:id => patron.to_param, :patron => { "firstname" => "invalid value" }}, valid_session
        assigns(:patron).should eq(patron)
      end

      it "re-renders the 'edit' template" do
        patron = Patron.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Patron.any_instance.stub(:save).and_return(false)
        put :update, {:id => patron.to_param, :patron => { "firstname" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested patron" do
      patron = Patron.create! valid_attributes
      expect {
        delete :destroy, {:id => patron.to_param}, valid_session
      }.to change(Patron, :count).by(-1)
    end

    it "redirects to the patrons list" do
      patron = Patron.create! valid_attributes
      delete :destroy, {:id => patron.to_param}, valid_session
      response.should redirect_to(patrons_url)
    end
  end

end
