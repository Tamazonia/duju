class AddExplanationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :explanation, :string
  end
end
