class AddDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.text :name
      t.text :location
      t.timestamps
    end
    
    add_column :users, :department_id, :integer
    
  end
end
