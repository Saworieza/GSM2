require 'test_helper'

class ContractorposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contractorpo = contractorpos(:one)
  end

  test "should get index" do
    get contractorpos_url
    assert_response :success
  end

  test "should get new" do
    get new_contractorpo_url
    assert_response :success
  end

  test "should create contractorpo" do
    assert_difference('Contractorpo.count') do
      post contractorpos_url, params: { contractorpo: { amount: @contractorpo.amount, contractorquote_id: @contractorpo.contractorquote_id, date: @contractorpo.date, description: @contractorpo.description, number: @contractorpo.number } }
    end

    assert_redirected_to contractorpo_url(Contractorpo.last)
  end

  test "should show contractorpo" do
    get contractorpo_url(@contractorpo)
    assert_response :success
  end

  test "should get edit" do
    get edit_contractorpo_url(@contractorpo)
    assert_response :success
  end

  test "should update contractorpo" do
    patch contractorpo_url(@contractorpo), params: { contractorpo: { amount: @contractorpo.amount, contractorquote_id: @contractorpo.contractorquote_id, date: @contractorpo.date, description: @contractorpo.description, number: @contractorpo.number } }
    assert_redirected_to contractorpo_url(@contractorpo)
  end

  test "should destroy contractorpo" do
    assert_difference('Contractorpo.count', -1) do
      delete contractorpo_url(@contractorpo)
    end

    assert_redirected_to contractorpos_url
  end
end
