class FactInterventionsController < InheritedResources::Base

  private

    def fact_intervention_params
      params.require(:fact_intervention).permit()
    end

end
