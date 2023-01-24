class TeamMembersController < ApplicationController
		before_action :set_team_member, only: %i[ show update destroy ]
		skip_before_action :verify_authenticity_token


	def index
		@team_members = TeamMember.all
		render json: @team_members
	end


	def show
	end

	def create 
		@team_member = TeamMember.new(:team_member_params)
		if @team_member.save
			render json: @team_member
		else
			render json: @team_member.errors
		end
	end

	def update 
		@team_member = TeamMember.update(:team_member_params)
		if @team_member.update
			render json: @team_member
		else
			render json: @team_member.errors
		end
	end


	def destroy
	 	@team_member.destroy
	end

	 

	 private

	def set_team_member
     @team_member= TeamMember.find(params[:id])
    end

	def team_member_params
       params.require(:team_member).permit(:name, :email )
    end
end

