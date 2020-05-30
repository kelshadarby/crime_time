require 'rails_helper'

RSpec.describe "As a visitor" do
  before :each do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:google_oauth2] = nil
    OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
        "uid"=>"12345",
        "info"=>
        {"email"=>"michael.g.scott@example.com",
        "first_name"=>"Michael",
        "last_name"=>"Scott"}
    })
  end
  it "I can log in with Google" do
    visit "/"
    click_on 'Login with Google'
    user = User.last

    expect(user.uid).to eq("12345")
    expect(user.email).to eq("michael.g.scott@example.com")
    expect(user.first_name).to eq("Michael")
    expect(user.last_name).to eq("Scott")

    expect(current_path).to eq('/user/dashboard')
  end
end