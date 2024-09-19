require "test_helper"

module Search
  class SearchIndexStoreTest < ActiveSupport::TestCase
    datadog_itr_unskippable

    setup do
      clear_search
      @user = users(:ben)
      @entry = create_entry(@user.feeds.first)
    end

    test "should be a new test" do
      expect (1).to eq(1)
    end

    test "should index entry" do
      SearchIndexStore.new.perform("Entry", @entry.id)
      Search.client { _1.refresh }
      entry = Search.client { _1.get(Entry.table_name, id: @entry.id) }
      assert entry["found"]
    end
  end
end
