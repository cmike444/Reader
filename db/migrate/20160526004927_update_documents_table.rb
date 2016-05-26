class UpdateDocumentsTable < ActiveRecord::Migration
  def change
    add_column :documents, :file, :string
    add_column :documents, :file_id, :string
    add_column :documents, :file_filename, :string
    add_column :documents, :file_size, :string
    add_column :documents, :file_content_type, :string
    add_index :documents, :file_id
    add_index :documents, :file_filename
  end
end
