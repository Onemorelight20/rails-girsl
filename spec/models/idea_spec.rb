
require "rails_helper"

RSpec.describe Idea, type: :model do
  context "Idea test" do
  it "has a name" do
    str = "My awesome idea name"
    user = User.create!(email: "test@test.com", password: "testtest")
    idea = Idea.create!(name: str, user: user)
    expect(idea.name).to eq(str)
  end
  end
end