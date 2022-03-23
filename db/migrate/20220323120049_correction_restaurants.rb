class CorrectionRestaurants < ActiveRecord::Migration[6.1]
  def change
    rename_column :restaurants, :adress, :address
  end
end
