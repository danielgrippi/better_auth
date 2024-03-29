require 'spec_helper'

describe RegistrationsController do
  describe "#new" do
    before { get :new }

    subject { response }

    it { should be_success }
    it { should render_template :new }
  end

  describe "#create" do
    let(:params) do
      { registration: {
          email: 'test@example.com'
        }
      }.stringify_keys
    end

    before do
      Registration.stub(:create) { double(token: 'foo') }
    end

    describe "response" do
      before { post :create, params }

      subject { response }

      it { should be_success }
      it { should render_template :create }
    end

    it "creates a registration code" do
      SecureRandom.stub(:hex) { "foo" }
      Registration.should_receive(:create).with(token: 'foo', email: 'test@example.com')

      post :create, params
    end
  end
end
