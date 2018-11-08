class InteractionsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  load_and_authorize_resource
  #after_action :check_matches, only: [:create]

  def create
    @interaction = Interaction.new(interaction_params)
    @interaction.user_one_id = current_user.id
    if @interaction.save
      check_matches
    else
      redirect_to search_pets_path
    end
  end

  def check_matches
    interaction = Interaction.where(user_one: @interaction.user_two_id, user_two: @interaction.user_one_id)
    if interaction.empty?
      redirect_to search_pets_path, notice: "No tienes match :("
    else
      match = Match.new(user_one_id: @interaction.user_one_id, user_two_id: @interaction.user_two_id)
      if match.save
        redirect_to user_path(@interaction.user_two_id), notice: "Felicidades hiciste match"
      else
        redirect_to search_pets_path, notice: "Error al hacer match :("
      end
    end
  end

  def interaction_params
    params.require(:interaction).permit(:user_two_id)
  end
end
