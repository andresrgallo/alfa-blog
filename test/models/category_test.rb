require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.new(name:"sports")
  end
  test "category should be valid category" do
    assert @category.valid?
  end
    test "category should be unique" do
        @category.save
        category = Category.new(name:"sports")
        assert_not category.valid?
    end
  test "category should not be blank" do
    @category.name = ""
    assert_not @category.valid?
  end
  test "category should be smaller than 26 characters" do
    @category.name = "a"*26
    assert_not @category.valid?
  end
  test "category should be larger than 2 characters" do
    @category.name = "a"*2
    assert_not @category.valid?
  end
end