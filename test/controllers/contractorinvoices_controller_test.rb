require 'test_helper'

class ContractorinvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contractorinvoice = contractorinvoices(:one)
  end

  test "should get index" do
    get contractorinvoices_url
    assert_response :success
  end

  test "should get new" do
    get new_contractorinvoice_url
    assert_response :success
  end

  test "should create contractorinvoice" do
    assert_difference('Contractorinvoice.count') do
      post contractorinvoices_url, params: { contractorinvoice: { amount: @contractorinvoice.amount, date: @contractorinvoice.date, milestone_id: @contractorinvoice.milestone_id, number: @contractorinvoice.number } }
    end

    assert_redirected_to contractorinvoice_url(Contractorinvoice.last)
  end

  test "should show contractorinvoice" do
    get contractorinvoice_url(@contractorinvoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_contractorinvoice_url(@contractorinvoice)
    assert_response :success
  end

  test "should update contractorinvoice" do
    patch contractorinvoice_url(@contractorinvoice), params: { contractorinvoice: { amount: @contractorinvoice.amount, date: @contractorinvoice.date, milestone_id: @contractorinvoice.milestone_id, number: @contractorinvoice.number } }
    assert_redirected_to contractorinvoice_url(@contractorinvoice)
  end

  test "should destroy contractorinvoice" do
    assert_difference('Contractorinvoice.count', -1) do
      delete contractorinvoice_url(@contractorinvoice)
    end

    assert_redirected_to contractorinvoices_url
  end
end
