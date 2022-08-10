class AddUserToChecklists < ActiveRecord::Migration[7.0]
  def change
    add_reference :checklists, :user, null: false, foreign_key: true
  end
end
