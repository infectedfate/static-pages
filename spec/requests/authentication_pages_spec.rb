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
      it { should have_link('Profile',   href: user_path(user)) }
      it { should have_link('Settings',  href: edit_user_path(@user)) }
      it { should have_link('Logout',    href: logout_path) }
      it { should_not have_link('Login', href: login_path) }
    end
  end

  describe "authorization" do

    describe "for non-signed-in users" do
      let(:user) { FactoryGirl.create(:user) }

      describe "in the Users controller" do

        describe "visiting the edit page" do
          before { visit edit_user_path(user) }
          it { should have_title('Login') }
        end

        describe "submitting to the update action" do
          before { patch user_path(user) }
          specify { expect(response).to redirect_to(login_path) }
        end
      end
    end
  end
end
