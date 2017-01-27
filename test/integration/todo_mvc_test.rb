require 'test_helper'

class TodoMvcTest < ActionDispatch::IntegrationTest
  # Capybara / PhantomJS freezes if we don't allow it time to complete
  # some actions.  0.05 works for me.  YMMV.
  SLEEP_TIME = 0.05

  def setup
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end

  test "allow me to add todo items" do
    visit "/"

    enter_item(TODO_ITEM_ONE)
    assert_items [TODO_ITEM_ONE]
    enter_item(TODO_ITEM_TWO)
    assert_items [TODO_ITEM_ONE, TODO_ITEM_TWO]
  end

  private

  def assert_items(ary)
    assert_equal ary, todo_items.map { |el| el.find(".view label").text }
  end

  TODO_ITEM_ONE = 'buy some cheese'
  TODO_ITEM_TWO = 'feed the cat'
  TODO_ITEM_THREE = 'book a doctors appointment'

  def todo_items
    sleep(SLEEP_TIME)
    page.all("#todos li")
  end

  def filters
    sleep(SLEEP_TIME)
    page.all("#filters li a")
  end

  def create_standard_items
    enter_item(TODO_ITEM_ONE)
    enter_item(TODO_ITEM_TWO)
    enter_item(TODO_ITEM_THREE)
  end

  def enter_item(text)
    fill_in 'new-todo', with: text
    find('#new-todo').native.send_key(:enter)
    sleep(SLEEP_TIME)
  end
end
