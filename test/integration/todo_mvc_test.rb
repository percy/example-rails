require 'test_helper'

class TodoMvcTest < ActionDispatch::IntegrationTest
  def setup
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end

  test "allow me to add todo items" do
    visit "/"

    Percy.snapshot(page, name: 'Empty todo list')

    enter_item(TODO_ITEM_ONE)
    assert_items [TODO_ITEM_ONE]
    enter_item(TODO_ITEM_TWO)
    assert_items [TODO_ITEM_ONE, TODO_ITEM_TWO]

    Percy.snapshot(page, name: 'Todo list with 2 todos')
  end

  private

  def assert_items(ary)
    assert_selector("#todos li", count: ary.length)
    assert_equal ary, todo_items.map { |el| el.find(".view label").text }
  end

  TODO_ITEM_ONE = 'buy some cheese'
  TODO_ITEM_TWO = 'feed the cat'
  TODO_ITEM_THREE = 'book a doctors appointment'

  def todo_items
    page.all("#todos li")
  end

  def create_standard_items
    enter_item(TODO_ITEM_ONE)
    enter_item(TODO_ITEM_TWO)
    enter_item(TODO_ITEM_THREE)
  end

  def enter_item(text)
    fill_in 'new-todo', with: text
    find('#new-todo').send_keys(:enter)
  end
end
