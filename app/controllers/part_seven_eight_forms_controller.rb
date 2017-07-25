class PartSevenEightFormsController < ApplicationController
    def agencies_params
        params.require(:part_seven_eight_form).permit(:Violations, :AccoladesComments, :Volunteers, :Equiptment, :Funding,
        :Training, :DigitalSignNIFBRep, :DateOfDSNIFBRep, :DigitalSignAgencyRep, :DateOfDSAgencyRep)
    end
  
    def create
        @part_seven_eight_form = PartSevenEightForm.create!(agencies_params)
        flash[:notice] = "Form was successfully submitted."
        redirect_to forms_path

    end 
    
end