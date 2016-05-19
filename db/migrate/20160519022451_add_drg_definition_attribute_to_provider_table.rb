class AddDrgDefinitionAttributeToProviderTable < ActiveRecord::Migration
  def change
    add_column :providers, :definition, :string
  end
end
