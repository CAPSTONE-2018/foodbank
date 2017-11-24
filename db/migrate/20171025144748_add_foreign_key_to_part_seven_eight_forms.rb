class AddForeignKeyToPartSevenEightForms < ActiveRecord::Migration
  def change
     add_foreign_key :part_seven_eight_forms, :forms
  end
end
