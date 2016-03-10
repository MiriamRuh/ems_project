require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:michael)
  end

  test "unsuccessful edit" do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), user: { name:  "", gender: "", address:"", zipcode:"", phone:"",
                                    email: "foo@invalid"
                                    }
  end

  # assert_template 'users/edit'
  test "successful edit" do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal name,  @user.name
    assert_equal email, @user.email
  end

end
