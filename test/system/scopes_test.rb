require "application_system_test_case"

class ScopesTest < ApplicationSystemTestCase
  setup do
    @scope = scopes(:one)
  end

  test "visiting the index" do
    visit scopes_url
    assert_selector "h1", text: "Scopes"
  end

  test "creating a Scope" do
    visit scopes_url
    click_on "New Scope"

    fill_in "Scope Type", with: @scope.scope_type
    click_on "Create Scope"

    assert_text "Scope was successfully created"
    click_on "Back"
  end

  test "updating a Scope" do
    visit scopes_url
    click_on "Edit", match: :first

    fill_in "Scope Type", with: @scope.scope_type
    click_on "Update Scope"

    assert_text "Scope was successfully updated"
    click_on "Back"
  end

  test "destroying a Scope" do
    visit scopes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scope was successfully destroyed"
  end
end
