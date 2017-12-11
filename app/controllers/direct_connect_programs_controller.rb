class DirectConnectProgramsController < ApplicationController
    def agencies_params
        params.require(:direct_connect_program).permit(:DirectConnectParticipate, :ColdFoodTransport, :PickupPaperwork, :SampleTemps, :TempControlledDevices)
    end
  
    def create
        @direct_connect_program = DirectConnectProgram.create!(agencies_params)
        #render '/forms/emergencyfood'
        redirect_to new_ef_program_path
    end 
    
end