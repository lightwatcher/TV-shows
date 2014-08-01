class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.string :descrip
      t.integer :episode_num

      t.timestamps
    end
  end
end
