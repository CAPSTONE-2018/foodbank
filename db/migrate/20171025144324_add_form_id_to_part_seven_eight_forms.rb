class AddFormIdToPartSevenEightForms < ActiveRecord::Migration
  def change
    add_column :part_seven_eight_forms, :form_id, :integer
  end
end
