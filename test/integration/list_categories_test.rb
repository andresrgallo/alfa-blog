require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest
    def setup
        @category1 = Category.create(name:'music')
        @category2 = Category.create(name:'arts')
    end
    test "Should list all categories" do
        get categories_path
        assert_template 'categories/index'
        assert_select 'li.category-name'
        assert_select 'a[href=?]', category_path(@category1), text: @category1.name
        assert_match 'music', response.body
    end
end
  
  