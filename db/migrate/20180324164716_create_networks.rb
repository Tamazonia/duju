class CreateNetworks < ActiveRecord::Migration[5.1]
  def change
    create_table :networks do |t|
      t.references :networker_one
      t.references :networker_two
      t.timestamps
    end
  end
end
