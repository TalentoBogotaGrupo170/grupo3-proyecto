class AddUserToPoblation < ActiveRecord::Migration[5.2]
  def change
    add_reference :poblations, :user, foreign_key: true
  end
end
