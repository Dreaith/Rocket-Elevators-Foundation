class InterventionsController < InheritedResources::Base

  private

    def intervention_params
      params.require(:intervention).permit(:author, :intervention_customer_id, :intervention_building_id, :intervention_battery_id, :intervention_column_id, :intervention_elevator_id, :intervention_employee_id)
    end

end
