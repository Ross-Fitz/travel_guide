class AddAttachmentToDocuments < ActiveRecord::Migration[7.0]
  def change
    add_column :documents, :attachment, :string
  end
end
