require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
    test "Should create a new category" do
        get new_category_path
        assert_template 'categories/new'
        assert_difference 'Category.count', 1 do
            post categories_path, params: {category:{name:"Sports"}}
            follow_redirect!
        end
        assert_template 'categories/index'
        assert_match 'Sports', response.body
    end
end
  