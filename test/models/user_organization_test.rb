require 'test_helper'

class UserOrganizationTest < ActiveSupport::TestCase

  def setup
    @user = User.new(category_location: "Example Estado", profile: "Example Psicologico", name: "Example User", description: "Example Empoderamiento", address: "Example colonia", phone: "0000000000")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "category_location should be present" do
    @user.category_location = "     "
    assert_not @user.valid?
  end

  test "profile should be present" do
    @user.profile = "     "
    assert_not @user.valid?
  end

  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end

  test "description should be present" do
    @user.description = "     "
    assert_not @user.valid?
  end

# ===================================================
  
  test "category_location should not be too long" do
    @user.category_location = "a" * 51
    assert_not @user.valid?
  end

  test "profile should not be too long" do
    @user.profile = "a" * 51
    assert_not @user.valid?
  end

   test "name should not be too long" do
    @user.name = "a" * 100
    assert_not @user.valid?
  end
 

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

end
