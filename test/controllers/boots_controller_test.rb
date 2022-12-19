require "test_helper"

class BootsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boot = boots(:one)
  end

  test "should get index" do
    get boots_url
    assert_response :success
  end

  test "should get new" do
    get new_boot_url
    assert_response :success
  end

  test "should create boot" do
    assert_difference('Boot.count') do
      post boots_url, params: { boot: { content: @boot.content, name: @boot.name } }
    end

    assert_redirected_to boot_url(Boot.last)
  end

  test "should show boot" do
    get boot_url(@boot)
    assert_response :success
  end

  test "should get edit" do
    get edit_boot_url(@boot)
    assert_response :success
  end

  test "should update boot" do
    patch boot_url(@boot), params: { boot: { content: @boot.content, name: @boot.name } }
    assert_redirected_to boot_url(@boot)
  end

  test "should destroy boot" do
    assert_difference('Boot.count', -1) do
      delete boot_url(@boot)
    end

    assert_redirected_to boots_url
  end
end
