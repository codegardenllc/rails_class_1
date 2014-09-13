class CreateItemsTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.column :name, :string
      t.column :completed, :boolean
      t.column :completed_at, :time
      t.column :item_type_id, :integer
    end
  end
end
