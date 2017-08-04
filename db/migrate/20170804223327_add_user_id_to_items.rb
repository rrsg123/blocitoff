class AddUserIdToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :user_id, :string
    add_column :items, :integer, :string
  end
end
