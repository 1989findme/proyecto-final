class InteractionsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  load_and_authorize_resource
  #after_action :check_matches, only: [:create]

  def create
    interaction = Interaction.new(interaction_params)
    interaction.user_one_id = current_user.id
    if interaction.save
      if Match.find_by(user_two_id: current_user.id, user_one_id: interaction.user_two_id).present?
        redirect_to user_path(interaction.user_two_id), notice: "Felicidades hiciste match"
      else
        redirect_to search_pets_path, notice: "No tienes match :("
      end
    else
      redirect_to search_pets_path
    end
  end

  # def check_matches
  #   byebug
  #   if Match.last.user_one_id = current_user.id && Match.last.user_two_id = params[:interaction][:user_two_id]
  #     redirect_to search_pets_path, notice: "Felicidades hiciste match"
  #   else
  #     redirect_to search_pets_path, notice: "No tienes match :("
  #   end
  # end

  def interaction_params
    params.require(:interaction).permit(:user_two_id)
  end
end
