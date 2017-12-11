class GroceryPlansController < ApplicationController
    def agencies_params
        params.require(:grocery_plan).permit(:ChoicePantry, :Traditional, :Combination, :Other, :OtherDistributonUtilized, :FequencyHouseholdCanRecieveFood, :AvgNumPeopleServered,
        :FoodPerHousehold, :GeoServiceArea, :FSClassAttended, :FSCAttendeeName, :FSCDate, :FeesRequire, :FeesExplained,
        :FundingSource, :DaysOfOperationVisible, :FoodAssistanceRequirements, :TrackClientParticipation, :Confidential,
        :Delivery)
    end
    def index
        @grocery_plan = GroceryPlan.all
    end
    def create
        @grocery_plan = GroceryPlan.create!(agencies_params)
        render '/forms/foodsafety'
    end 
end
