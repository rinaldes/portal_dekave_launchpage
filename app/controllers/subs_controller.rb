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
        flash[:notice] = 'New Subscriber Listed'
        redirect_to "/terimakasih"
      else
        flash[:error] = @sub.errors.full_messages.join('<br/>')
        redirect_to root_path
      end
    end

    def selesai
      respond_to do |format|
        format.html
      end
    end

    private
    def sub_params
      params.require(:sub).permit(:masalah, :email)
    end
end