require 'test_helper'

class ContractorquotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contractorquote = contractorquotes(:one)
  end

  test "should get index" do
    get contractorquotes_url
    assert_response :success
  end

  test "should get new" do
    get new_contractorquote_url
    assert_response :success
  end

  test "should create contractorquote" do
    assert_difference('Contractorquote.count') do
      post contractorquotes_url, params: { contractorquote: { amount: @contractorquote.amount, customerpo_id: @contractorquote.customerpo_id, date: @contractorquote.date, description: @contractorquote.description, number: @contractorquote.number, site_id: @contractorquote.site_id } }
    end

    assert_redirected_to contractorquote_url(Contractorquote.last)
  end

  test "should show contractorquote" do
    get contractorquote_url(@contractorquote)
    assert_response :success
  end

  test "should get edit" do
    get edit_contractorquote_url(@contractorquote)
    assert_response :success
  end

  test "should update contractorquote" do
    patch contractorquote_url(@contractorquote), params: { contractorquote: { amount: @contractorquote.amount, customerpo_id: @contractorquote.customerpo_id, date: @contractorquote.date, description: @contractorquote.description, number: @contractorquote.number, site_id: @contractorquote.site_id } }
    assert_redirected_to contractorquote_url(@contractorquote)
  end

  test "should destroy contractorquote" do
    assert_difference('Contractorquote.count', -1) do
      delete contractorquote_url(@contractorquote)
    end

    assert_redirected_to contractorquotes_url
  end
end
