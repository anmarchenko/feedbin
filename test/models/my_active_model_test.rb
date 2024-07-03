require "test_helper"

class MyActiveModelTest < ActiveSupport::TestCase
  test "instantiate a new model" do
    MyActiveModel.new(name: "Ben", email: "ben@mail.test")
  end
end
