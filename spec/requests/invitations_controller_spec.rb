require "rails_helper"

RSpec.describe "InvitationsController", :type => :request do
  let!(:cycle) { create :cycle, public_status: true }
    it "opens a invite modal" do
      get '/invitations/new', params: { cycle_id: 1 }, xhr: true
      expect(response.status).to eq(200)
    end
end