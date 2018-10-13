class InteractionsController < ApplicationController
  load_and_authorize_resource
  def create
    interaction = Interaction.new(interaction_params)
    interaction.user_one_id = current_user.id
    interaction.save!
    redirect_to search_pets_path
  end
  def interaction_params
    params.require(:interaction).permit(:user_two_id)
  end
end
