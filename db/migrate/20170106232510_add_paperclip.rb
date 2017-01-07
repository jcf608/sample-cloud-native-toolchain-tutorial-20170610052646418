class AddPaperclip < ActiveRecord::Migration[5.0]
    
  def up
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.timestamps
    end
    add_attachment :users, :avatar
  end

  def down
    destroy_table :users
    # remove_attachment :users, :avatar
  end
end
