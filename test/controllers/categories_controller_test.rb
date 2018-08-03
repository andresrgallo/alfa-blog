require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  def setup
        @category = Category.create(name:"Sports")
    end

    test "Should get index page" do
        get categories_path
        assert_response :success
    end
    test "Should get show page" do
        get category_path(@category)
        assert_response :success
    end
    test "Should get new page" do
        get new_category_path
        assert_response :success
    end
end
