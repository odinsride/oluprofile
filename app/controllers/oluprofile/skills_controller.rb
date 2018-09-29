module Oluprofile
  class SkillsController < ApplicationController
    before_action :set_skill, only: [:show, :edit, :update, :destroy]

    # GET /skills
    def index
      @skills = current_user.skills.all
    end

    # GET /skills/1
    def show
    end

    # GET /skills/new
    def new
      @skill = current_user.skills.build
    end

    # GET /skills/1/edit
    def edit
    end

    # POST /skills
    def create
      @skill = current_user.skills.build(skill_params)

      if @skill.save
        redirect_to @skill, notice: 'Skill was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /skills/1
    def update
      if @skill.update(skill_params)
        redirect_to @skill, notice: 'Skill was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /skills/1
    def destroy
      @skill.destroy
      redirect_to skills_url, notice: 'Skill was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_skill
        @skill = current_user.skills.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def skill_params
        params.require(:skill).permit(:name, :first_used, :last_used, :proficiency, :active, :order, :user_id)
      end
  end
end
