class PartSixFormsController < ApplicationController
    def agencies_params
        params.permit(:Membership_Liability, :FoodSanitationLicense, :HealthDepartentPermit,
        :PestControl)
    end
  
    def create
        @part_six_form = PartSixForm.create!(agencies_params)
        render '/forms/part7_8'
    end 
    
end