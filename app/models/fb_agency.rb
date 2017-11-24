class FbAgency < ActiveRecord::Base
    #belongs_to :fb_agencies
    
    include MultiStepModel
    def self.total_steps
        3
    end
    validates :AgencyName, presence: true, if: :step1?
    validates :AgencyCounty, presence: true, if: :step1?
    validates :AgencyNumber, numericality: true, if: :step1?
    validates :TodaysDate, presence: true, if: :step1?
    validates :DofLastMonitor, presence: true, if: :step1?
    validates :ParentAgency, presence: true, if: :step1?
    validates :PAgencyNum, numericality: true,if: :step1?
    validates :SiteAddress, presence: true, if: :step1?
    validates :SiteNumber, numericality: true, if: :step1?
    validates :ContactName, presence: true, if: :step1?
    validates :ContactNum, numericality: true, if: :step1?
    validates :Director, presence: true, if: :step1?
    validates :DirectorNum, numericality: true, if: :step1?
    validates :AdditionalContact, presence: true, if: :step1?
    validates :AdditionalNum, numericality: true, if: :step1?
    validates :PrimaryEmail, presence: true, format: { with: /@/ }, if: :step2?
    validates :DateMostRecentTraining, presence: true, if: :step2?
    validates :TaxExemptOnFile, :presence => true, :inclusion => { :in => %w(Yes No), :allow_blank => false }, if: :step2?
    validates :IRSVerification, :presence => true, :inclusion => { :in => %w(Yes No), :allow_blank => false }, if: :step2?
    validates :DateOfVerification, presence: true, if: :step2?
    validates :EEP, :presence => true, if: :step2?
    validates :DateOfContract, presence: true, if: :step3?
    validates :SoupKitchen, presence: true, :allow_blank => true, if: :step3?
    validates :GroupHome, presence: true, :allow_blank => true, if: :step3?
    validates :Shelter, presence: true, :allow_blank => true, if: :step3?
    validates :Daycare, presence: true, :allow_blank => true, if: :step3?
    validates :YouthProgram, presence: true, :allow_blank => true, if: :step3?
    validates :FoodPantry, presence: true, :allow_blank => true, if: :step3?
    validates :Seasonal, presence: true, :allow_blank => true, if: :step3?
    validates :MobilePantry, presence: true, :allow_blank => true, if: :step3?
    validates :Backpack, presence: true, :allow_blank => true, if: :step3?
    validates :PersonInterviewed, presence: true, if: :step3?
    validates :DaysOfOperation, presence: true, if: :step3?
    validates :SingleAudit, presence: true, if: :step3?
    validates :HandicapAccessible, :presence => true, :allow_blank => true, if: :step3?
end