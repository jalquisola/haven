class AddNrdsToAgents < ActiveRecord::Migration
  def change
    add_column :agents, :nrds, :string
  end
end
