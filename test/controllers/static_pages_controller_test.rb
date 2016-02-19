require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
 
 test "should get bienvenida" do
    get :bienvenida
    assert_response :success
    assert_select "title", "ems_app"
  end

  test "should get relaciones_violentas" do
    get :relaciones_violentas
    assert_response :success
    assert_select "title", "Relaciones_violentas"
  end

  test "should get organizaciones" do
    get :organizaciones
    assert_response :success
    assert_select "title", "Organizaciones"
  end

end
