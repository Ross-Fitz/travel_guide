class CreateChecklists < ActiveRecord::Migration[7.0]
  def change
    create_table :checklists do |t|
      t.string :apply_invite
      t.string :accept_invite
      t.string :passport
      t.string :id_document
      t.string :police_cert
      t.string :cv
      t.string :family_information
      t.string :biometrics
      t.string :acceptance_letter
      t.string :funds

      t.timestamps
    end
  end
end
