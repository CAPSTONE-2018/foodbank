class FbAgenciesController < ApplicationController
    def agencies_params
        params.require(:fb_agency).permit(:AgencyName, :AgencyCounty, :AgencyNumber, :TodaysDate, :DofLastMonitor, :ParentAgency,
        :PAgencyNum, :SiteAddress, :SiteNumber, :ContactName, :ContactNum, :Director, :DirectorNum, :AdditionalContact, :AdditionalNum, 
        :PrimaryEmail, :DateMostRecentTraining, :TaxExemptOnFile, :IRSVerification, :DateOfVerification, :EEP, :DateOfContract,
        :SoupKitchen, :GroupHome, :Shelter, :Daycare, :YouthProgram, :FoodPantry, :Seasonal, :MobilePantry, :Backpack, :PersonInterviewed, :DaysOfOperation, :SingleAudit, :HandicapAccessible)
    end
    def index
        @forms = Form.all
    end
    
    def create
        @fb_agency = FbAgency.create!(agencies_params)
        render '/forms/mealplan'
    end 
    
end