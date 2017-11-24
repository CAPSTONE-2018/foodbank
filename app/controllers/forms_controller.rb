class FormsController < ApplicationController
    before_action :require_user, only: [:index, :show]
    def index
        @forms = Form.all
    end
<<<<<<< HEAD
=======
    
    def new
        
    end
    
>>>>>>> e8e4e74393da09d5fd3ed6a80f97685d7cb2bc98
end