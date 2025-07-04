require "test_helper"

module Search
  class SearchIndexStoreTest < ActiveSupport::TestCase
    setup do
      clear_search
      @user = users(:ben)
      @entry = create_entry(@user.feeds.first)
    end

    test "should index entry" do
      SearchIndexStore.new.perform("Entry", @entry.id)
      Search.client { _1.refresh }
      entry = Search.client { _1.get(Entry.table_name, id: @entry.id) }
      assert entry["found"]
    end
  end
end
