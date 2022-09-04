class Deletecolumnfromroutes < ActiveRecord::Migration[7.0]
  def change
    remove_column :routes, :references
  end
end
