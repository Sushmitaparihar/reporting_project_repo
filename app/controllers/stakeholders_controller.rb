class StakeholdersController < ApplicationController
	before_action :set_stakeholder, only: %i[ show update destroy ]
    skip_before_action :verify_authenticity_token

    def index
    	@stakeholders = Stakeholder.all
		render json: @stakeholders
    end

    def show

    end


    def create
    	 @stakeholder = Stakeholder.new(stakeholder_params)
        if @stakeholder.save!
            render json: @stakeholder , status: :created
        else
            render json: {error: "stakeholder not created"} , status: :not_created
        end
    end

    def update
    	if @stakeholder.update(stakeholder_params)
        render json: @project , status: :updated
       else
        render json: {error: "stakeholder information not updated"} , status: :not_updated
       end 
    end

    def destroy
    	@project.destroy
        render json: {message: "stakeholder deleted successfully"} , status: :deleted
    end


    private

    def stakeholder_params
        params.require(:stakeholder).permit(:name, :email)
    end

    def set_stakeholder
        begin
            @stakeholder = Stakeholder.find(params[:id])
          rescue => e
            logger.info e
            return render json: { message: 'stakeholder not found' }, status: :not_found
          end
          render json: @stakeholder
        end

end

