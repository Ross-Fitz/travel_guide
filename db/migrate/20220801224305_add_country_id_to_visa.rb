class AddCountryIdToVisa < ActiveRecord::Migration[7.0]
  def change
    add_column :visas, :country_id, :integer
  end
end
