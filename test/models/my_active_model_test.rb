require "test_helper"

class MyActiveModelTest < ActiveSupport::TestCase
  datadog_itr_unskippable

  test "instantiate a new model" do
    MyActiveModel.new(name: "Ben", email: "ben@mail.test")
    AccountMigration.new

    SimpleModel.new
  end

  test "instantiate a new model once more" do
    MyActiveModel.new(name: "Ben", email: "ben@mail.test")
    AccountMigration.new
    SimpleModel.new
  end
end