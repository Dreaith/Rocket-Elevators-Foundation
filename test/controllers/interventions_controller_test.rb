require 'test_helper'

class InterventionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intervention = interventions(:one)
  end

  test "should get index" do
    get interventions_url
    assert_response :success
  end

  test "should get new" do
    get new_intervention_url
    assert_response :success
  end

  test "should create intervention" do
    assert_difference('Intervention.count') do
      post interventions_url, params: { intervention: { author: @intervention.author, intervention_battery_id: @intervention.intervention_battery_id, intervention_building_id: @intervention.intervention_building_id, intervention_column_id: @intervention.intervention_column_id, intervention_customer_id: @intervention.intervention_customer_id, intervention_elevator_id: @intervention.intervention_elevator_id, intervention_employee_id: @intervention.intervention_employee_id } }
    end

    assert_redirected_to intervention_url(Intervention.last)
  end

  test "should show intervention" do
    get intervention_url(@intervention)
    assert_response :success
  end

  test "should get edit" do
    get edit_intervention_url(@intervention)
    assert_response :success
  end

  test "should update intervention" do
    patch intervention_url(@intervention), params: { intervention: { author: @intervention.author, intervention_battery_id: @intervention.intervention_battery_id, intervention_building_id: @intervention.intervention_building_id, intervention_column_id: @intervention.intervention_column_id, intervention_customer_id: @intervention.intervention_customer_id, intervention_elevator_id: @intervention.intervention_elevator_id, intervention_employee_id: @intervention.intervention_employee_id } }
    assert_redirected_to intervention_url(@intervention)
  end

  test "should destroy intervention" do
    assert_difference('Intervention.count', -1) do
      delete intervention_url(@intervention)
    end

    assert_redirected_to interventions_url
  end
end
