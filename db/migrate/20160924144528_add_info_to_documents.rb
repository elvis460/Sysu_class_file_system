class AddInfoToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :info, :text
  end
end
