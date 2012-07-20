class AddColumnAndRenameColumn < ActiveRecord::Migration
  def up
add_column :users,:contact ,:integer
	add_column :users,:user_type,:integer,:limit => 4
	
         add_column :users,:first_name,:string
        add_column :users,:last_name,:string
        add_column :users,:full_name,:string
  end

  def down
remove_column :users,:contact
	remove_column :users,:user_type

        remove_column :users,:first_name
         remove_column :users,:last_name
      remove_column :users,:full_name
  end
end
