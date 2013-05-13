require 'spec_helper'

describe RegistrationCode do
  describe "validations" do
    it { should validate_presence_of :token }
  end
end
