class AddForeignKeyToSignatureDocuments < ActiveRecord::Migration
  def change
     add_foreign_key :signature_documents, :forms
  end
end
