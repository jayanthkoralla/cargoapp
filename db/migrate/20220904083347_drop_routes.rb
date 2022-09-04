class DropRoutes < ActiveRecord::Migration[7.0]
  def change
    drop_table :routes
  end
end
