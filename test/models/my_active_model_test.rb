require "test_helper"

class MyActiveModelTest < ActiveSupport::TestCase
  datadog_itr_unskippable

  test "instantiate a new model" do
    MyActiveModel.new(name: "Ben", email: "ben@mail.test")
    AccountMigration.new

    SimpleModel.new
  end

  test "instantiate a new model once more" do
    ObjectSpace.trace_object_allocations_start

    MyActiveModel.new(name: "Ben", email: "ben@mail.test")
    AccountMigration.new
    SimpleModel.new

    ObjectSpace.each_object.to_a.each do |object|
      next if ObjectSpace.allocation_sourcefile(object).nil?
      next if object.is_a?(String) || object.is_a?(Symbol) || object.is_a?(Numeric)

      source_file = Module.const_source_location(object.class.to_s).first
      next if source_file.nil?
      next unless source_file.start_with?("/Users/andrey.marchenko/qa/feedbin")
      p source_file
    end

    ObjectSpace.trace_object_allocations_stop
    ObjectSpace.trace_object_allocations_clear
  end
end
