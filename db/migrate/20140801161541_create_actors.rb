class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.string :src
      t.string :bio

      t.timestamps
    end
  end
end
