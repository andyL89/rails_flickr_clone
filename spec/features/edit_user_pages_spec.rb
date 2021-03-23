require 'rails_helper'

describe "the user edit process" do
  it "edits a user account" do
    user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd')
    user.save
    visit '/'
    fill_in 'user_email', :with => 'test@example.com'
    fill_in 'user_password', :with => 'f4k3p455w0rd'
    click_on 'commit'
    click_link 'Profile'
    fill_in 'user_email', :with => 'new@email.com'
    fill_in 'user_password', :with => '12345ABcdef'
    fill_in 'user_password_confirmation', :with => '12345ABcdef'
    fill_in 'user_current_password', :with => 'f4k3p455w0rd'
    click_on 'commit'
    expect(page).to have_content "Your account has been updated successfully."
  end
end