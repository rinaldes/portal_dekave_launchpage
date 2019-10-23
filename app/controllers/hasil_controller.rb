class HasilController < ApplicationController
    
    def index
        @dataHasil = Sub.all
        byebug
        respond_to do |format|
            format.html
        end
    end

end