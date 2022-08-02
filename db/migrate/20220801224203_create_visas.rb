class CreateVisas < ActiveRecord::Migration[7.0]
  def change
    create_table :visas do |t|
      t.string :name
      t.text :information

      t.timestamps
    end
  end
end
