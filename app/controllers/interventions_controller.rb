class InterventionsController < InheritedResources::Base

  before_action :authenticate_employee_user! 

  def create
    @interventions = Intervention.create!(intervention_params)

    ZendeskAPI::Ticket.new($client, :id => 1, :priority => "urgent")
    
    ZendeskAPI::Ticket.create!(@client, 
      :subject => "Request from Rocket Elevator Intervention Unit",
      :requester => {"name": @current_user.first_name},
      :comment => { :value => 
        "A new ticket as been created. please refer to the request for Customer ##{@interventions.customer_id}
        including: 
        Building # #{@interventions.building_id} ,
        Battery # #{@interventions.battery_id} ,
        Column # #{@interventions.column_id} , 
        elevator # #{@interventions.elevator_id}.
        this request as been assign to employee # #{@interventions.employee_id}
        Additional Information:
        #{@interventions.report}"
      },
      :type => "question",  
      :priority => "urgent")
  end

  def show
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
      params.require(:interventions).permit( :author, :customer_id, :building_id, :battery_id, :column_id, :elevator_id, :employee_id,:result,:report,:status).merge(author: current_user.id)
    
    end

   

end
