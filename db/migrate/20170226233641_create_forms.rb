class CreateForms < ActiveRecord::Migration
    def change
       create_table "food_safeties", force: :cascade do |t|
    t.text     "RequireAPermit"
    t.text     "PermitDate"
    t.text     "PermitScore"
    t.text     "CleaningSchedulePosted"
    t.text     "PestControlRoutine"
    t.text     "PestControlCompany"
    t.string "PestControlLastVisit"
    t.text     "FoodStorageLocation"
    t.text     "AdditionalStorage"
    t.text     "FoodSixInchesOffFloor"
    t.text     "FridgeTempBetween35and40F"
    t.text     "FridgeTemp"
    t.text     "FreezerTemp0orBelow"
    t.text     "FreezerTemp"
    t.text     "WorkingThermometers"
    t.text     "TempLogsMaintainedAndPosted"
  end
    end
end


 

  
 
  


