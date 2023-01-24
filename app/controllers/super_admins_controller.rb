class SuperAdminsController < ApplicationController
	before_action :set_project, only: %i[ show update destroy ]
    skip_before_action :verify_authenticity_token

    def index
    	@superadmins = Superadmin.all
		render json: @superadmins
    end

    def show

    end


    def create
    	 @superadmin = Superadmin.new(superadmin_params)
        if @superadmin.save!
            render json: @superadmin , status: :created
        else
            render json: {error: "superadmin not created"} , status: :not_created
        end
    end

    def update
    	if @superadmin.update(superadmin_params)
        render json: @superadmin , status: :updated
       else
        render json: {error: "superadmin information not updated"} , status: :not_updated
       end 
    end

    def destroy
    	@superadmin.destroy
        render json: {message: "superadmin deleted successfully"} , status: :deleted
    end


    private

    def superadmin_params
        params.require(:superadmin).permit(:name, :email)
    end

    def set_superadmin
        begin
            @superadmin = Superadmin.find(params[:id])
          rescue => e
            logger.info e
            return render json: { message: 'superadmin not found' }, status: :not_found
          end
          render json: @superadmin
        end

end
