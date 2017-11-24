module Wizard
    module FbAgency
        STEPS = %w(step1 step2 step3).freeze
        
        
        class Base
            include ActiveModel::Model
            attr_accessor :fbagency
            
            delegate(*::FbAgency.attribute_names.map { |attr| [attr, "#{attr}="] }.flatten, to: :fbagency)
           
            def initialize(fbagency_attributes)
                @fbagency = ::FbAgency.new(fbagency_attributes)
            end
        end
        
        class Step1 < Base
            validates :AgencyName, presence: true 
            validates :AgencyCounty, presence: true
            validates :AgencyNumber, numericality: true
            validates :TodaysDate, presence: true
            validates :DofLastMonitor, presence: true
            validates :ParentAgency, presence: true
            validates :PAgencyNum, numericality: true
            validates :SiteAddress, presence: true
            validates :SiteNumber, numericality: true
            validates :ContactName, presence: true
            validates :ContactNum, numericality: true
            validates :Director, presence: true
            validates :DirectorNum, numericality: true
            validates :AdditionalContact, presence: true
            validates :AdditionalNum, numericality: true
        end
        
        class Step2 < Step1
            validates :PrimaryEmail, presence: true, format: { with: /@/ }
            validates :DateMostRecentTraining, presence: true
            validates :TaxExemptOnFile, inclusion: [true, false]
            validates :IRSVerification, inclusion: [true, false]
            validates :DateOfVerification, presence: true
            validates :EEP, inclusion: [true, false]
        end
        
        class Step3 < Step2
            validates :DateOfContract, presence: true
            validates :SoupKitchen, presence: true
            validates :GroupHome, presence: true
            validates :Shelter, presence: true
            validates :Daycare, presence: true
            validates :YouthProgram, presence: true
            validates :FoodPantry, presence: true
            validates :Seasonal, presence: true
            validates :MobilePantry, presence: true
            validates :Backpack, presence: true
            validates :PersonInterviewed, presence: true
            validates :DaysOfOperation, presence: true
            validates :SingleAudit, presence: true
            validates :HandicapAccessible, presence: true
        end
    end
end