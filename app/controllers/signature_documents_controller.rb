class SignatureDocumentsController < ApplicationController
    def agencies_params
        params.permit(:DHS_TANFSignaturesDocumentsUsed, :SignatureSheetsForCorrectYears,
        :FoodBankNameOnSheet, :DateOnSignatureSheet, :ReciptientSignTheirName, :ClientAddressRecorded, :HouseholdSizeRecorded,
        :NumOfChildren18andUnderRecorded)
    end
  
    def create
        @signature_document = SignatureDocument.create!(agencies_params)
        render '/forms/part6'
    end 
    
end