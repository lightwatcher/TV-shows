class CreateCharecters < ActiveRecord::Migration
  def change
    create_table :charecters do |t|
      t.integer :actor_id
      t.integer :show_id
      t.string :plays

      t.timestamps
    end
  end
end
