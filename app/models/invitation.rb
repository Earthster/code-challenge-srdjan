class Invitation < ApplicationRecord
  belongs_to :cycle

  validates :email, presence: true
  validates :message, presence: true

  attr_accessor :invitee_data
end
