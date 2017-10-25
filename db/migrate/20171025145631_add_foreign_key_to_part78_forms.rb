class AddForeignKeyToPart78Forms < ActiveRecord::Migration
  def change
    add_foreign_key :part7_8_forms, :forms
  end
end
