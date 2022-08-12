class AddCountryToVisas < ActiveRecord::Migration[7.0]
  def change
    add_reference :visas, :country, null: false, foreign_key: true
  end
end
