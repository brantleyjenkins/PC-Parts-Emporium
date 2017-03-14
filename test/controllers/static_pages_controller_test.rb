require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "PC Parts Emporium"
  end

  test "should get root" do
    get static_pages_home_url
    assert_response :success
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get cpus" do
    get static_pages_cpus_url
    assert_response :success
    assert_select "title", "CPUs | #{@base_title}"
  end

  test "should get gpus" do
    get static_pages_gpus_url
    assert_response :success
  end

  test "should get memory" do
    get static_pages_memory_url
    assert_response :success
  end

  test "should get storage" do
    get static_pages_storage_url
    assert_response :success
  end
  
  test "should get cart" do
    get static_pages_cart_url
    assert_response :success
  end

end
