class AddColumnsToAgents < ActiveRecord::Migration
  def change
    add_column :agents, :linked_in_url, :string
    add_column :agents, :skype, :string
    add_column :agents, :whatsapp, :string
    add_column :agents, :viber, :string
    add_column :agents, :contact_no, :string
  end
end
