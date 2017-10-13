class AddPositionToPortofolio < ActiveRecord::Migration[5.1]
  def change
    add_column :portofolios, :position, :integer
  end
end
