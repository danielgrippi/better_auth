require 'spec_helper'

feature "Sign Up" do
  scenario "A new user signs up" do
    visit '/'
    fill_in :email, with: 'test@example.com'
    click_on 'Create User'
    page.should have_content RegistrationCode.first.token
  end
end
