class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.string :source
      t.string :destination
      t.string :references
      t.references :driver, null: false, foreign_key: true

      t.timestamps
    end
  end
end
