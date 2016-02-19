require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/bienvenida'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", relaciones_violentas_path
    assert_select "a[href=?]", informate_path
    assert_select "a[href=?]", organizaciones_path
    get signup_path
    # assert_select "title", full_title("Sign up")
  end
end
