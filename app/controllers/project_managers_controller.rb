 class ProjectManagersController < ApplicationController
	before_action :set_project_manager, only: %i[ show update destroy ]
    skip_before_action :verify_authenticity_token
    def index
        @managers = ProjectManager.all
        render json: @managers
    end
    def create
        @manager = ProjectManager.new(manager_params)
        if @manager.save
            render json: @manager
        else
            render json: {error: "unprocessable entry"}
        end
    end
    def show
        render json :@manager
    end
    def update
        if @manager.update(manager_params)
            render json :@manager
        else
            render json: {error: "manager information could not updated "}
        end
    end
    def destroy
        @manager.destroy
    end
    private
    def manager_params
        params.require(:manager).permit(:name ,:email)
    end
    def set_project_manager
        begin
            @manager = ProjectManager.find(params[:id])
          rescue => e
            logger.info e
            return render json: { message: 'manager not found' }, status: :not_found
          end
          render json: @manager
    end
end
end
