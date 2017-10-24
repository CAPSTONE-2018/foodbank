# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171024201629) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Violations_Concerns", force: :cascade do |t|
    t.text     "AccoladesCommentsFromAgencyStaff"
    t.text     "AgencyNeeds_Volunteers"
    t.integer  "AgencyNeeds_Equiptment"
    t.integer  "AgencyNeeds_Funding"
    t.integer  "AgencyNeeds_Training"
    t.text     "DigitalSignNIFBRep"
    t.string   "DateOfDSNIFBRep"
    t.text     "DigitalSignAgencyRep"
    t.string   "DataOfDSAgencyRep"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "direct_connect_programs", force: :cascade do |t|
    t.text    "DirectConnectParticipate"
    t.text    "ColdFoodTransport"
    t.text    "PickupPaperwork"
    t.text    "SampleTemps"
    t.text    "TempControlledDevices"
    t.integer "form_id"
  end

  create_table "ef_programs", force: :cascade do |t|
    t.text    "DiscriminationComplaints"
    t.text    "ComplaintsForwarded"
    t.integer "NumOfCasesInInventory"
    t.text    "OperateOtherProgram"
    t.text    "FoodSeperated"
    t.text    "EFPSiteManual"
    t.text    "OperationHoursPosted"
    t.text    "JusticePosterVisible"
    t.text    "ReligiousOrganization"
    t.text    "BeneficiaryRightsVisible"
    t.text    "NonReligiousReferral"
    t.text    "RequireClientDocuments"
    t.text    "DocumentsRequested"
    t.text    "PurposeForRequestingDocumentation"
    t.text    "ReceiveFoodOnceEvery30days"
    t.text    "RequiredToObtainReferral"
    t.text    "OtherFoodsWithGovernemntCommodities"
    t.text    "PostersVisible"
    t.string  "DHS_TANFSignaturesDocumentsUsed"
    t.string  "SignatureSheetsForCorrectYears"
    t.text    "FoodBankNameOnSheet"
    t.text    "DateOnSignatureSheet"
    t.text    "ReciptientSignTheirName"
    t.text    "ClientAddressRecorded"
    t.text    "HouseholdSizeRecorded"
    t.text    "NumOfChildren18andUnderRecorded"
    t.string  "CorrectYear"
    t.text    "OriginalSignature"
    t.text    "SignInPresenceOfPantryPersonnel"
    t.integer "form_id"
  end

  create_table "fb_agencies", force: :cascade do |t|
    t.text    "Agency_id"
    t.string  "AgencyCounty"
    t.integer "AgencyNumber"
    t.string  "TodaysDate"
    t.string  "DofLastMonitor"
    t.text    "AgencyName"
    t.text    "ParentAgency"
    t.text    "PAgencyNum"
    t.text    "SiteAddress"
    t.integer "SiteNumber",             limit: 8
    t.text    "ContactName"
    t.integer "ContactNum",             limit: 8
    t.text    "Director"
    t.integer "DirectorNum",            limit: 8
    t.text    "AdditionalContact"
    t.integer "AdditionalNum",          limit: 8
    t.text    "PrimaryEmail"
    t.date    "DateMostRecentTraining"
    t.text    "TaxExemptOnFile"
    t.text    "IRSVerification"
    t.string  "DateOfVerification"
    t.integer "EEP"
    t.string  "DateOfContract"
    t.text    "SoupKitchen"
    t.text    "GroupHome"
    t.text    "Shelter"
    t.text    "Daycare"
    t.text    "YouthProgram"
    t.text    "FoodPantry"
    t.text    "Seasonal"
    t.text    "MobilePantry"
    t.text    "Backpack"
    t.text    "PersonInterviewed"
    t.text    "DaysOfOperation"
    t.text    "SingleAudit"
    t.text    "HandicapAccessible"
  end

  create_table "food_safeties", force: :cascade do |t|
    t.text     "RequireAPermit"
    t.text     "PermitDate"
    t.text     "PermitScore"
    t.text     "CleaningSchedulePosted"
    t.text     "PestControlRoutine"
    t.text     "PestControlCompany"
    t.datetime "PestControlLastVisit"
    t.text     "FoodStorageLocation"
    t.text     "AdditionalStorage"
    t.text     "FoodSixInchesOffFloor"
    t.text     "FridgeTempBetween35and40F"
    t.text     "FridgeTemp"
    t.text     "FreezerTemp0orBelow"
    t.text     "FreezerTemp"
    t.text     "WorkingThermometers"
    t.text     "TempLogsMaintainedAndPosted"
    t.integer  "form_id"
  end

  create_table "forms", force: :cascade do |t|
    t.text "AgencyCounty"
    t.text "agency_num"
    t.text "agency_name"
  end

  create_table "grocery_plans", force: :cascade do |t|
    t.text    "ChoicePantry"
    t.text    "Traditional"
    t.text    "Combination"
    t.text    "Other"
    t.text    "OtherDistributonUtilized"
    t.text    "FequencyHouseholdCanRecieveFood"
    t.text    "AvgNumPeopleServered"
    t.text    "AvgNumHouseholdsServered"
    t.text    "FoodPerHousehold"
    t.text    "GeoServiceArea"
    t.text    "FSClassAttended"
    t.text    "FSCAttendeeName"
    t.text    "FSCDate"
    t.text    "FeesRequired"
    t.integer "FeesExplained"
    t.integer "FundingSource"
    t.integer "DaysOfOperationVisible"
    t.text    "FoodAssistanceRequirements"
    t.integer "TrackClientParticipation"
    t.integer "Confidential"
    t.integer "Delivery"
    t.integer "form_id"
  end

  create_table "meal_programs", force: :cascade do |t|
    t.text    "MonthlyServiceData"
    t.integer "NumMealsServeredLastMonth"
    t.text    "SafeFoodHandlingCertification"
    t.text    "CertificationName"
    t.text    "FeesDonations"
    t.text    "FeesExplained"
    t.text    "FundingSource"
    t.text    "SFHCertificationPosted"
    t.text    "OperationHoursPosted"
    t.text    "FoodAssistanceRequirements"
    t.integer "NumPeopleServedMonthly"
    t.integer "GroupHomeCount"
    t.integer "GroupHomeNumMeals"
    t.text    "MealPrepParticipation"
    t.integer "SchoolReducedFee"
    t.integer "SchoolFee"
    t.integer "NumSchoolReducedLunches"
    t.integer "NumFreeLunch"
    t.integer "form_id"
  end

  create_table "part7_8_forms", force: :cascade do |t|
    t.text     "Violations"
    t.text     "AccoladesComments"
    t.text     "Volunteers"
    t.text     "Equiptment"
    t.text     "Funding"
    t.text     "Training"
    t.text     "DigitalSignNIFBRep"
    t.datetime "DateOfDSNIFBRep"
    t.text     "DigitalSignAgencyRep"
    t.datetime "DateOfDSAgencyRep"
  end

  create_table "part_seven_eight_forms", force: :cascade do |t|
    t.text   "Violations"
    t.text   "AccoladesComments"
    t.text   "Volunteers"
    t.text   "Equiptment"
    t.text   "Funding"
    t.text   "Training"
    t.text   "DigitalSignNIFBRep"
    t.string "DateOfDSNIFBRep"
    t.text   "DigitalSignAgencyRep"
    t.string "DateOfDSAgencyRep"
  end

  create_table "part_six_forms", force: :cascade do |t|
    t.text    "Membership_Liability"
    t.text    "FoodSanitationLicense"
    t.text    "HealthDepartmentPermit"
    t.text    "PestControl"
    t.integer "form_id"
  end

  create_table "program_procedures", force: :cascade do |t|
    t.text    "RequireClientDocuments"
    t.text    "DocumentsRequested"
    t.text    "PurposeForRequestingDocumentation"
    t.text    "ReceiveFoodOnceEvery30days"
    t.text    "RequiredToObtainReferral"
    t.text    "OtherFoodsWithGovernemntCommodities"
    t.text    "PostersVisible"
    t.integer "form_id"
  end

  create_table "proxy_forms", force: :cascade do |t|
    t.string "CorrectYear"
    t.text   "OriginalSignature"
    t.text   "SignInPresenceOfPantryPersonnel"
  end

  create_table "signature_documents", force: :cascade do |t|
    t.string "DHS_TANFSignaturesDocumentsUsed"
    t.string "SignatureSheetsForCorrectYears"
    t.text   "FoodBankNameOnSheet"
    t.text   "DateOnSignatureSheet"
    t.text   "ReciptientSignTheirName"
    t.text   "ClientAddressRecorded"
    t.text   "HouseholdSizeRecorded"
    t.text   "NumOfChildren18andUnderRecorded"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "direct_connect_programs", "forms"
  add_foreign_key "ef_programs", "forms"
  add_foreign_key "food_safeties", "forms"
  add_foreign_key "grocery_plans", "forms"
  add_foreign_key "meal_programs", "forms"
  add_foreign_key "part_six_forms", "forms"
  add_foreign_key "program_procedures", "forms"
end
