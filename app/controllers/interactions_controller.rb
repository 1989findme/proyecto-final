class InteractionsController < ApplicationController
  def create
    Interaction.create(
      user_one_id: current_user.id,
      user_two_id: params[:user_two_id],
      like: paramas[:like]
    )
    redirect_to users_search_path
  end
end
