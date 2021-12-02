class InterventionsController < InheritedResources::Base

  def trueAuthor
    Interventions.author = current_user.first_name+" "+current_user.last_name
  end

  def get_building
    @building = Building.where(customer_id: params[:building_id])
    puts '----------------------------- ok ------------------------'
    render json: {buildings: @building}
  end

  def get_battery
    @battery = Battery.where(building_id: params[:battery_id])
    puts @battery
    render json: {batteries: @battery}
  end

  def get_column
    @column = Column.where(battery_id: params[:column_id])

    render json: {columns: @column}
  end

  def get_elevator
    @elevator = Elevator.where(column_id: params[:elevator_id])

    render json:{elevators: @elevator}
  end
  
  private

    def intervention_params
      params.require(:intervention).permit(:author, :customer_id, :building_id, :battery_id, :column_id, :elevator_id, :employee_id,:report)
    end

   

end
