require 'rails_helper'

RSpec.describe "AuthenticationPages", type: :request do
  describe "signin" do
    before { visit signin_path }

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email",    with: user.email.upcase
        fill_in "Password", with: user.password
        click_button "Login"
      end

      it { should have_title(user.name) }
      it { should have_link('Profile',     href: user_path(user)) }
      it { should have_link('Logout',    href: logout_path) }
      it { should_not have_link('Login', href: login_path) }
    end
  end

end
