require "application_system_test_case"

class SitesTest < ApplicationSystemTestCase
  setup do
    @site = sites(:one)
  end

  test "visiting the index" do
    visit sites_url
    assert_selector "h1", text: "Sites"
  end

  test "creating a Site" do
    visit sites_url
    click_on "New Site"

    fill_in "Customerpo", with: @site.customerpo_id
    fill_in "Customerquote", with: @site.customerquote_id
    fill_in "Name", with: @site.name
    fill_in "Number", with: @site.number
    fill_in "Region", with: @site.region_id
    fill_in "Scope", with: @site.scope_id
    fill_in "Status", with: @site.status_id
    fill_in "Tower Height", with: @site.tower_height
    fill_in "Town", with: @site.town_id
    click_on "Create Site"

    assert_text "Site was successfully created"
    click_on "Back"
  end

  test "updating a Site" do
    visit sites_url
    click_on "Edit", match: :first

    fill_in "Customerpo", with: @site.customerpo_id
    fill_in "Customerquote", with: @site.customerquote_id
    fill_in "Name", with: @site.name
    fill_in "Number", with: @site.number
    fill_in "Region", with: @site.region_id
    fill_in "Scope", with: @site.scope_id
    fill_in "Status", with: @site.status_id
    fill_in "Tower Height", with: @site.tower_height
    fill_in "Town", with: @site.town_id
    click_on "Update Site"

    assert_text "Site was successfully updated"
    click_on "Back"
  end

  test "destroying a Site" do
    visit sites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Site was successfully destroyed"
  end
end
