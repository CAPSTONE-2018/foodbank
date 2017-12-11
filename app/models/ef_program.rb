class EfProgram < ActiveRecord::Base
    include MultiStepModel
    def self.total_steps
        3
    end
    
    validates :DiscriminationComplaints, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false }, if: :step1?
    validates :ComplaintsForwarded, presence: true, :inclusion => { :in => %w(Yes No NA), :allow_blank => false },  if: :step1?
    validates :NumOfCasesInInventory, presence: true, if: :step1?
    validates :OperateOtherProgram, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false }, if: :step1?
    validates :FoodSeperated, presence: true, :inclusion => { :in => %w(Yes No NA), :allow_blank => false },  if: :step1?
    validates :EFPSiteManual, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step1?
    validates :OperationHoursPosted, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step1?
    validates :JusticePosterVisible, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step1?
    validates :ReligiousOrganization, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step1?
    validates :BeneficiaryRightsVisible, presence: true, :inclusion => { :in => %w(Yes No NA), :allow_blank => false },  if: :step2?
    validates :NonReligiousReferral, presence: true, :inclusion => { :in => %w(Yes No NA), :allow_blank => false },  if: :step2?
    validates :RequireClientDocuments, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step2?
    validates :DocumentsRequested, presence: true, if: :step2?
    validates :PurposeForRequestingDocumentation, presence: true, if: :step2?
    validates :ReceiveFoodOnceEvery30days, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step2?
    validates :RequiredToObtainReferral, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step2?
    validates :OtherFoodsWithGovernemntCommodities, :inclusion => { :in => %w(Yes No), :allow_blank => false },  presence: true, if: :step2?
    validates :PostersVisible, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step2?
    validates :DHS_TANFSignaturesDocumentsUsed, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step3?
    validates :SignatureSheetsForCorrectYears, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step3?
    validates :FoodBankNameOnSheet, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step3?
    validates :DateOnSignatureSheet, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step3?
    validates :ReciptientSignTheirName, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step3?
    validates :ClientAddressRecorded, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step3?
    validates :HouseholdSizeRecorded, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step3?
    validates :NumOfChildren18andUnderRecorded, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step3?
    validates :CorrectYear, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step3?
    validates :OriginalSignature, presence: true, :inclusion => { :in => %w(Yes No), :allow_blank => false },  if: :step3?
    validates :SignInPresenceOfPantryPersonnel, :inclusion => { :in => %w(Yes No), :allow_blank => true },  if: :step3?
    
end