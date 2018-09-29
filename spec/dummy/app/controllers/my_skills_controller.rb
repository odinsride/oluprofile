class MySkillsController < ApplicationController
  def index
    @skills = current_user.skills.all
  end
end
