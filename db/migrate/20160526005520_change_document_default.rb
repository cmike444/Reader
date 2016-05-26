class ChangeDocumentDefault < ActiveRecord::Migration
  def change
    change_column_default :documents, :type, nil
  end
end
