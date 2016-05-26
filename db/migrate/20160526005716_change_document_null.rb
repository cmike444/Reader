class ChangeDocumentNull < ActiveRecord::Migration
  def change
    change_column_null :documents, :type, true
  end
end
