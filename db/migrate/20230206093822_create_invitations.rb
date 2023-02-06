class CreateInvitations < ActiveRecord::Migration[7.0]
  def change
    create_table :invitations do |t|
      t.belongs_to :cycle, null: false

      t.string :invitee_name
      t.string :email, null: false
      t.text :message, null: false
      t.timestamps
    end
  end
end
