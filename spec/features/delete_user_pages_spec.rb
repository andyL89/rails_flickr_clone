require 'rails_helper'

describe "the user delete process" do
  it "deletes a user account" do
    user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd')
    user.save
    visit '/'
    fill_in 'user_email', :with => 'test@example.com'
    fill_in 'user_password', :with => 'f4k3p455w0rd'
    click_on 'commit'
    click_link 'Profile'
    click_on 'Cancel my account'
    expect(page).to have_content "You need to sign in or sign up before continuing."
  end
end