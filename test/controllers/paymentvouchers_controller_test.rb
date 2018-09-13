require 'test_helper'

class PaymentvouchersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paymentvoucher = paymentvouchers(:one)
  end

  test "should get index" do
    get paymentvouchers_url
    assert_response :success
  end

  test "should get new" do
    get new_paymentvoucher_url
    assert_response :success
  end

  test "should create paymentvoucher" do
    assert_difference('Paymentvoucher.count') do
      post paymentvouchers_url, params: { paymentvoucher: { contractorinvoice_id: @paymentvoucher.contractorinvoice_id, number: @paymentvoucher.number, site_id: @paymentvoucher.site_id } }
    end

    assert_redirected_to paymentvoucher_url(Paymentvoucher.last)
  end

  test "should show paymentvoucher" do
    get paymentvoucher_url(@paymentvoucher)
    assert_response :success
  end

  test "should get edit" do
    get edit_paymentvoucher_url(@paymentvoucher)
    assert_response :success
  end

  test "should update paymentvoucher" do
    patch paymentvoucher_url(@paymentvoucher), params: { paymentvoucher: { contractorinvoice_id: @paymentvoucher.contractorinvoice_id, number: @paymentvoucher.number, site_id: @paymentvoucher.site_id } }
    assert_redirected_to paymentvoucher_url(@paymentvoucher)
  end

  test "should destroy paymentvoucher" do
    assert_difference('Paymentvoucher.count', -1) do
      delete paymentvoucher_url(@paymentvoucher)
    end

    assert_redirected_to paymentvouchers_url
  end
end
