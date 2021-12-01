require "application_system_test_case"

class FactInterventionsTest < ApplicationSystemTestCase
  setup do
    @fact_intervention = fact_interventions(:one)
  end

  test "visiting the index" do
    visit fact_interventions_url
    assert_selector "h1", text: "Fact Interventions"
  end

  test "creating a Fact intervention" do
    visit fact_interventions_url
    click_on "New Fact Intervention"

    click_on "Create Fact intervention"

    assert_text "Fact intervention was successfully created"
    click_on "Back"
  end

  test "updating a Fact intervention" do
    visit fact_interventions_url
    click_on "Edit", match: :first

    click_on "Update Fact intervention"

    assert_text "Fact intervention was successfully updated"
    click_on "Back"
  end

  test "destroying a Fact intervention" do
    visit fact_interventions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fact intervention was successfully destroyed"
  end
end
