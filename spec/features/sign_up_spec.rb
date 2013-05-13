require 'spec_helper'

feature "Sign Up" do
  scenario "A new user signs up" do
    visit '/'
    fill_in :email, with: 'test@example.com'
    click_on 'Create Registration'
    page.should have_content registration_token
  end

  def registration_token
    @registration_token ||= Registration.first.token
  end
end
