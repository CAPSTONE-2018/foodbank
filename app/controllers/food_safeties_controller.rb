class FoodSafetiesController < ApplicationController
    def agencies_params
        params.require(:food_safety).permit(:RequireAPermit, :PermitDate, :PermitScore, :CleaningSchedulePosted, 
        :PestControlRoutine, :PestControlCompany, :PestControlLastVisit, :FoodStorageLocation, :AdditionalStorage,
        :FoodSixInchesOffFloor, :FridgeTempBetween35and40F,  :FreezerTemp0orBelow, :WorkingThermometers, :TempLogsMaintainedAndPosted)
    end
    
    def create
        @food_safety = FoodSafety.create!(agencies_params)
        render '/forms/directconnect'
    end 
end