require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = User.new(name: "Example user", email: "examlpe@mail.com") }
  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:name) }
end
