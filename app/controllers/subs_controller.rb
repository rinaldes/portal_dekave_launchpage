class SubsController < ApplicationController
   
    def index
      @sub = Sub.new
      respond_to do |format|
          format.html
      end
    end

    def create
      @sub = Sub.new(sub_params)
      if @sub.save
        flash[:notice] = 'Sub was successfully created.'
        redirect_to subs_path
      else
        flash[:error] = @sub.errors.full_messages.join('<br/>')
        redirect_to subs_path
      end
    end

    private
    def sub_params
      params.require(:sub).permit(:masalah, :email)
    end
end