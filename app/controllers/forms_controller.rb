class FormsController < ApplicationController
    before_action :require_user, only: [:index, :show]
    def index
        @forms = Form.all
    end
    
end