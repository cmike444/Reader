class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.string :type, null: false, default: 'Default'
      t.string :unique_id
      t.text :summary
      t.text :content
      t.integer :user_id
      t.timestamps
    end
  end
end
