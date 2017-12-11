class EfProgramsController < ApplicationController
before_action :load_efprogram

  def index
    @ef_programs = EfProgram.all
  end

  def show
  end
  
  def new
    @wizard = ModelWizard.new(EfProgram, session, params).start
    @ef_program = @wizard.object
    logger.debug "New efprogram: #{@ef_program.attributes.inspect}"
  end
  
  def edit
    @wizard = ModelWizard.new(@ef_programs, session, params).start
  end

  def create
    @wizard = ModelWizard.new(EfProgram, session, params, agencies_params).continue
    @ef_program = @wizard.object
    if @wizard.save
      @ef_program = EfProgram.create!(agencies_params)
        session[:efprogram_attributes] = nil
        render '/forms/part6'
    else
      render :new
    end
  end

  def update
    @wizard = ModelWizard.new(@ef_programs, session, params, agencies_params).continue
    if @wizard.save
      redirect_to @ef_programs, notice: 'updated.'
    else
      render :edit
    end
  end

  def destroy
    @ef_programs.destroy
    redirect_to ef_programs_url
  end

private

  def load_efprogram
    @ef_programs = EfProgram.find_by(id: params[:id])
  end

  def agencies_params
    return params unless params[:ef_program]

    params.require(:ef_program).permit(:current_step,:DiscriminationComplaints, :ComplaintsForwarded, :NumOfCasesInInventory, :OperateOtherProgram, :FoodSeperated, 
        :EFPSiteManual, :OperationHoursPosted, :JusticePosterVisible, :ReligiousOrganization, :BeneficiaryRightsVisible,
        :NonReligiousReferral, :RequireClientDocuments, :DocumentsRequested, :PurposeForRequestingDocumentation,
        :ReceiveFoodOnceEvery30days, :RequiredToObtainReferral, :OtherFoodsWithGovernemntCommodities, :PostersVisible, :DHS_TANFSignaturesDocumentsUsed, :SignatureSheetsForCorrectYears,
        :FoodBankNameOnSheet, :DateOnSignatureSheet, :ReciptientSignTheirName, :ClientAddressRecorded, :HouseholdSizeRecorded,
        :NumOfChildren18andUnderRecorded, :CorrectYear, :OriginalSignature, :SignInPresenceOfPantryPersonnel => [:id, :name]
    )
  end

end

=begin class EfProgramsController < ApplicationController
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
=end 