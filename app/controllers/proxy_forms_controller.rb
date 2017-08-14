class ProxyFormsController < ApplicationController
    def agencies_params
        params.require(:proxy_form).permit(:CorrectYear, :OriginalSignature, :SignInPresenceOfPantryPersonnel)
    end
    def create
        @proxy_form = ProxyForm.create!(agencies_params)
        render '/forms/part6'
    end 
    
end