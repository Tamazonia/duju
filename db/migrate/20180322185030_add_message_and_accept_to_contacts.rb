class AddMessageAndAcceptToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :invite_message, :text
    add_column :contacts, :accepted, :boolean, default: nil
  end
end
