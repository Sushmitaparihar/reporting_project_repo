class ProjectRolesController < ApplicationController


	def index
		@project_roles = ProjectRole.all
		render json: @project_roles
	end


	def show
	end

	def new

	end

	def create 
		@project_role = ProjectRole.new(:project_params)
		if @project_role.save
			render json: @project_role
		else
			render json: @project_role.errors
		end
	end

	def update 
		@project_role = ProjectRole.update(:project_role_params)
		if @project_role.update
			render json: @project_role
		else
			render json: @project_role.errors
		end
	end


	def destroy
	 	@project_role.destroy
	end

	 

	 private

	def project_params
       params.require(:project).permit(:name, :email )
    end
end
end
