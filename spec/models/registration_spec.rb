require 'spec_helper'

describe Registration do
  describe "validations" do
    it { should validate_presence_of :email }
    it { should validate_presence_of :token }
  end
end
