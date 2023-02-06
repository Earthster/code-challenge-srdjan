class InvitationsController < ApplicationController

  # GET /invitations/new
  def new
    @invitation = Invitation.new(cycle_id: params['cycle_id'])
    respond_to do |format|
      format.js
    end
  end

  # POST /invitations
  def create
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invitation
      @invitation = Invitation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invitation_params
      params.require(:invitation).permit(:invitee_data, :message, :cycle_id)
    end
end
