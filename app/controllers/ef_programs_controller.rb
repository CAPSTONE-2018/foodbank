class EfProgramsController < ApplicationController
    def agencies_params
        params.require(:ef_program).permit(:DiscriminationComplaints, :ComplaintsForwarded, :OperateOtherProgram, :FoodSeperated, 
        :EFPSiteManual, :OperationHoursPosted, :JusticePosterVisible, :ReligiousOrganization, :BeneficiaryRightsVisible,
        :NonReligiousReferral, :RequireClientDocuments, :DocumentsRequested, :PurposeForRequestingDocumentation,
        :ReceiveFoodOnceEvery30days, :RequiredToObtainReferral, :OtherFoodsWithGovernemntCommodities, :PostersVisible, :DHS_TANFSignaturesDocumentsUsed, :SignatureSheetsForCorrectYears,
        :FoodBankNameOnSheet, :DateOnSignatureSheet, :ReciptientSignTheirName, :ClientAddressRecorded, :HouseholdSizeRecorded,
        :NumOfChildren18andUnderRecorded, :CorrectYear, :OriginalSignature, :SignInPresenceOfPantryPersonnel)
    end
  
    def create
        @ef_program = EfProgram.create!(agencies_params)
        render '/forms/part6'
    end 

end