class MealProgramsController < ApplicationController
    def agencies_params
        params.require(:meal_program).permit(:MonthlyServiceData, :NumMealsServeredLastMonth, :SafeFoodHandlingCertification, :CertificationName,
        :FeesDonations, :FeesExplained, :FundingSource, :SFHCertificationPosted, :OperationHoursPosted, :FoodAssistanceRequirements,
        :NumPeopleServedMonthly, :GroupHomeCount, :GroupHomeNumMeals, :MealPrepParticipation, :SchoolReducedFee, :SchoolFee, :NumSchoolReducedLunches,
        :NumFreeLunch)
    end
    
    def create
        @meal_program = MealProgram.create!(agencies_params)
            render '/forms/groceryplan'
            
        
    end 
end