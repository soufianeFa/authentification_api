require 'rails_helper'

RSpec.describe "Sessions" do

  it "signs user in and out" do
    user = User.create!(email: "user@example.org", password: "very-secret")

    sign_in user
    get authenticated_root_path
    expect(controller.current_user).to eq(user)

    sign_out user
    get authenticated_root_path
    expect(controller.current_user).to be_nil
  end

end