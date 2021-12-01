require "application_system_test_case"

class InterventionsTest < ApplicationSystemTestCase
  setup do
    @intervention = interventions(:one)
  end

  test "visiting the index" do
    visit interventions_url
    assert_selector "h1", text: "Interventions"
  end

  test "creating a Intervention" do
    visit interventions_url
    click_on "New Intervention"

    fill_in "Author", with: @intervention.author
    fill_in "Intervention battery", with: @intervention.intervention_battery_id
    fill_in "Intervention building", with: @intervention.intervention_building_id
    fill_in "Intervention column", with: @intervention.intervention_column_id
    fill_in "Intervention customer", with: @intervention.intervention_customer_id
    fill_in "Intervention elevator", with: @intervention.intervention_elevator_id
    fill_in "Intervention employee", with: @intervention.intervention_employee_id
    click_on "Create Intervention"

    assert_text "Intervention was successfully created"
    click_on "Back"
  end

  test "updating a Intervention" do
    visit interventions_url
    click_on "Edit", match: :first

    fill_in "Author", with: @intervention.author
    fill_in "Intervention battery", with: @intervention.intervention_battery_id
    fill_in "Intervention building", with: @intervention.intervention_building_id
    fill_in "Intervention column", with: @intervention.intervention_column_id
    fill_in "Intervention customer", with: @intervention.intervention_customer_id
    fill_in "Intervention elevator", with: @intervention.intervention_elevator_id
    fill_in "Intervention employee", with: @intervention.intervention_employee_id
    click_on "Update Intervention"

    assert_text "Intervention was successfully updated"
    click_on "Back"
  end

  test "destroying a Intervention" do
    visit interventions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Intervention was successfully destroyed"
  end
end
