class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :entry, foreign_key: true

      t.timestamps
    end
    add_index :comments, [:entry_id, :created_at]
  end
end
