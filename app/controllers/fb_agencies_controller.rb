class FbAgenciesController < ApplicationController
before_action :load_fbagency


  def index
    @fb_agencies = FbAgency.all
  end

  def show
  end

  def new
    @wizard = ModelWizard.new(FbAgency, session, params).start
    @fb_agency = @wizard.object
    logger.debug "New agency: #{@fb_agency.attributes.inspect}"
  end

  def edit
    @wizard = ModelWizard.new(@fb_agencies, session, params).start
  end

  def create
    @wizard = ModelWizard.new(FbAgency, session, params, agencies_params).continue
    @fb_agency = @wizard.object
    if @wizard.save
      @fb_agency = FbAgency.create!(agencies_params)
        session[:fbagency_attributes] = nil
        render '/forms/groceryplan'
    else
      render :new
    end
  end

  def update
    @wizard = ModelWizard.new(@fb_agencies, session, params, agencies_params).continue
    if @wizard.save
      redirect_to @fb_agencies, notice: 'updated.'
    else
      render :edit
    end
  end

  def destroy
    @fb_agencies.destroy
    redirect_to fb_agencies_url
  end

private

  def load_fbagency
    @fb_agencies = FbAgency.find_by(id: params[:id])
  end

  def agencies_params
    return params unless params[:fb_agency]

    params.require(:fb_agency).permit(:current_step,
      :AgencyName, :AgencyCounty, :AgencyNumber, :TodaysDate, :DofLastMonitor, :ParentAgency,
        :PAgencyNum, :SiteAddress, :SiteNumber, :ContactName, :ContactNum, :Director, :DirectorNum, :AdditionalContact, :AdditionalNum, 
        :PrimaryEmail, :DateMostRecentTraining, :TaxExemptOnFile, :IRSVerification, :DateOfVerification, :EEP,
        :DateOfContract, :SoupKitchen, :GroupHome, :Shelter, :Daycare, :YouthProgram, :FoodPantry, :Seasonal, :MobilePantry, :Backpack, :PersonInterviewed, :DaysOfOperation, :SingleAudit, :HandicapAccessible => [:id, :name]
    )
  end

end











=begin
    before_action :load_fbagency_wizard, except: %i(validate_step)
    
    
    def validate_step
        logger.debug "validate step"
        current_step = params[:current_step]

        
        @fb_agency = wizard_fbagency_for_step(current_step)
        @fb_agency.fbagency.attributes = agencies_params
        session[:fbagency_attributes] = @fb_agency.fbagency.attributes
        
        if @fb_agency.valid?
            next_step = wizard_fbagency_next_step(current_step)
            create and return unless next_step
            logger.debug next_step.inspect
            redirect_to action: next_step
        else
            render current_step
        end
    end
    
    def create 
        if @fb_agency.fbagency.save
        @fb_agency = FbAgency.create!(agencies_params)
        session[:fbagency_attributes] = nil
        render '/forms/groceryplan'
        else
            #redirect_to({action: Wizard::FbAgency::STEPS.index}, alert: 'There was a problem submitting this form.')
        end
    end
    
    private
    
    def load_fbagency_wizard
        logger.debug "the action name is"
        logger.debug action_name.inspect
        @fb_agency = wizard_fbagency_for_step(action_name)
    end
    
    def wizard_fbagency_next_step(step)
        Wizard::FbAgency::STEPS[Wizard::FbAgency::STEPS.index(step) + 1]
    end
    
    def wizard_fbagency_for_step(step)
        logger.debug step.inspect
        raise InvalidStep unless step.in?(Wizard::FbAgency::STEPS)
        
        "Wizard::FbAgency::#{step.camelize}".constantize.new(session[:fbagency_attributes])
        
    end
    
    def agencies_params
        params.require(:fb_agency).permit(:AgencyName, :AgencyCounty, :AgencyNumber, :TodaysDate, :DofLastMonitor, :ParentAgency,
        :PAgencyNum, :SiteAddress, :SiteNumber, :ContactName, :ContactNum, :Director, :DirectorNum, :AdditionalContact, :AdditionalNum, 
        :PrimaryEmail, :DateMostRecentTraining, :TaxExemptOnFile, :IRSVerification, :DateOfVerification, :EEP,
        :DateOfContract, :SoupKitchen, :GroupHome, :Shelter, :Daycare, :YouthProgram, :FoodPantry, :Seasonal, :MobilePantry, :Backpack, :PersonInterviewed, :DaysOfOperation, :SingleAudit, :HandicapAccessible)
    end

     class InvalidStep < StandardError; end
    
end
=end