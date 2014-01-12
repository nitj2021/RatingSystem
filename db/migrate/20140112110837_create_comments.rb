class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :comment
    	t.integer :vendor_id
    	t.integer :evaluator_id

      t.timestamps
    end
  end
end
