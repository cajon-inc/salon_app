class AddActiveToSalon < ActiveRecord::Migration[5.2]
  def change
    add_column :salons, :active, :boolean
  end
end
