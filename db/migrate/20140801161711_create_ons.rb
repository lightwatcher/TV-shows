class CreateOns < ActiveRecord::Migration
  def change
    create_table :ons do |t|
      t.integer :show_id
      t.integer :network_id
      t.string :appears_at

      t.timestamps
    end
  end
end
