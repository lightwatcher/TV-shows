class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :chanel

      t.timestamps
    end
  end
end
