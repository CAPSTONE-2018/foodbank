class AddFormIdToPartSixForms < ActiveRecord::Migration
  def change
    add_column :part_six_forms, :form_id, :integer
  end
end
