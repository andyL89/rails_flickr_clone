require 'rails_helper'

describe "the user signup process" do
  it "creates a user account" do
    visit '/'
    click_link 'Sign up'
    fill_in 'user_email', :with => 'test3@email.com'
    fill_in 'user_password', :with => 'Password1!'
    fill_in 'user_password_confirmation', :with => 'Password1!'
    click_on 'commit'
    expect(page).to have_content "Welcome! You have signed up successfully."
  end
end