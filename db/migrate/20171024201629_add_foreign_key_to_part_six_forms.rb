class AddForeignKeyToPartSixForms < ActiveRecord::Migration
  def change
    add_foreign_key :part_six_forms, :forms
  end
end
