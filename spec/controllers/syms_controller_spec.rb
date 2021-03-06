require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe SymsController do

  def mock_sym(stubs={})
    @mock_sym ||= mock_model(Sym, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all syms as @syms" do
      Sym.stub(:all) { [mock_sym] }
      get :index
      assigns(:syms).should eq([mock_sym])
    end
  end

  describe "GET show" do
    it "assigns the requested sym as @sym" do
      Sym.stub(:find).with("37") { mock_sym }
      get :show, :id => "37"
      assigns(:sym).should be(mock_sym)
    end
  end

  describe "GET new" do
    it "assigns a new sym as @sym" do
      Sym.stub(:new) { mock_sym }
      get :new
      assigns(:sym).should be(mock_sym)
    end
  end

  describe "GET edit" do
    it "assigns the requested sym as @sym" do
      Sym.stub(:find).with("37") { mock_sym }
      get :edit, :id => "37"
      assigns(:sym).should be(mock_sym)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created sym as @sym" do
        Sym.stub(:new).with({'these' => 'params'}) { mock_sym(:save => true) }
        post :create, :sym => {'these' => 'params'}
        assigns(:sym).should be(mock_sym)
      end

      it "redirects to the created sym" do
        Sym.stub(:new) { mock_sym(:save => true) }
        post :create, :sym => {}
        response.should redirect_to(sym_url(mock_sym))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sym as @sym" do
        Sym.stub(:new).with({'these' => 'params'}) { mock_sym(:save => false) }
        post :create, :sym => {'these' => 'params'}
        assigns(:sym).should be(mock_sym)
      end

      it "re-renders the 'new' template" do
        Sym.stub(:new) { mock_sym(:save => false) }
        post :create, :sym => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested sym" do
        Sym.stub(:find).with("37") { mock_sym }
        mock_sym.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :sym => {'these' => 'params'}
      end

      it "assigns the requested sym as @sym" do
        Sym.stub(:find) { mock_sym(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:sym).should be(mock_sym)
      end

      it "redirects to the sym" do
        Sym.stub(:find) { mock_sym(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(sym_url(mock_sym))
      end
    end

    describe "with invalid params" do
      it "assigns the sym as @sym" do
        Sym.stub(:find) { mock_sym(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:sym).should be(mock_sym)
      end

      it "re-renders the 'edit' template" do
        Sym.stub(:find) { mock_sym(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sym" do
      Sym.stub(:find).with("37") { mock_sym }
      mock_sym.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the syms list" do
      Sym.stub(:find) { mock_sym }
      delete :destroy, :id => "1"
      response.should redirect_to(syms_url)
    end
  end

end
