class ChangeCompletedAtToDateTime < ActiveRecord::Migration
  def up
    change_column :items, :completed_at, :datetime
  end

  def down
    change_column :items, :completed_at, :time
  end
end
