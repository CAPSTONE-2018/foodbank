class AddFormIdToSignatureDocuments < ActiveRecord::Migration
  def change
    add_column :signature_documents, :form_id, :integer
  end
end
