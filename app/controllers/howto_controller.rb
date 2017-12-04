class HowtoController < ApplicationController
    def show
        render template: "howto/#{params[:howto]}"
    end
end
