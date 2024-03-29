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

describe BasketballsController do

  # This should return the minimal set of attributes required to create a valid
  # Basketball. As you add validations to Basketball, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BasketballsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all basketballs as @basketballs" do
      basketball = Basketball.create! valid_attributes
      get :index, {}, valid_session
      assigns(:basketballs).should eq([basketball])
    end
  end

  describe "GET show" do
    it "assigns the requested basketball as @basketball" do
      basketball = Basketball.create! valid_attributes
      get :show, {:id => basketball.to_param}, valid_session
      assigns(:basketball).should eq(basketball)
    end
  end

  describe "GET new" do
    it "assigns a new basketball as @basketball" do
      get :new, {}, valid_session
      assigns(:basketball).should be_a_new(Basketball)
    end
  end

  describe "GET edit" do
    it "assigns the requested basketball as @basketball" do
      basketball = Basketball.create! valid_attributes
      get :edit, {:id => basketball.to_param}, valid_session
      assigns(:basketball).should eq(basketball)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Basketball" do
        expect {
          post :create, {:basketball => valid_attributes}, valid_session
        }.to change(Basketball, :count).by(1)
      end

      it "assigns a newly created basketball as @basketball" do
        post :create, {:basketball => valid_attributes}, valid_session
        assigns(:basketball).should be_a(Basketball)
        assigns(:basketball).should be_persisted
      end

      it "redirects to the created basketball" do
        post :create, {:basketball => valid_attributes}, valid_session
        response.should redirect_to(Basketball.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved basketball as @basketball" do
        # Trigger the behavior that occurs when invalid params are submitted
        Basketball.any_instance.stub(:save).and_return(false)
        post :create, {:basketball => {}}, valid_session
        assigns(:basketball).should be_a_new(Basketball)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Basketball.any_instance.stub(:save).and_return(false)
        post :create, {:basketball => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested basketball" do
        basketball = Basketball.create! valid_attributes
        # Assuming there are no other basketballs in the database, this
        # specifies that the Basketball created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Basketball.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => basketball.to_param, :basketball => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested basketball as @basketball" do
        basketball = Basketball.create! valid_attributes
        put :update, {:id => basketball.to_param, :basketball => valid_attributes}, valid_session
        assigns(:basketball).should eq(basketball)
      end

      it "redirects to the basketball" do
        basketball = Basketball.create! valid_attributes
        put :update, {:id => basketball.to_param, :basketball => valid_attributes}, valid_session
        response.should redirect_to(basketball)
      end
    end

    describe "with invalid params" do
      it "assigns the basketball as @basketball" do
        basketball = Basketball.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Basketball.any_instance.stub(:save).and_return(false)
        put :update, {:id => basketball.to_param, :basketball => {}}, valid_session
        assigns(:basketball).should eq(basketball)
      end

      it "re-renders the 'edit' template" do
        basketball = Basketball.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Basketball.any_instance.stub(:save).and_return(false)
        put :update, {:id => basketball.to_param, :basketball => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested basketball" do
      basketball = Basketball.create! valid_attributes
      expect {
        delete :destroy, {:id => basketball.to_param}, valid_session
      }.to change(Basketball, :count).by(-1)
    end

    it "redirects to the basketballs list" do
      basketball = Basketball.create! valid_attributes
      delete :destroy, {:id => basketball.to_param}, valid_session
      response.should redirect_to(basketballs_url)
    end
  end

end
