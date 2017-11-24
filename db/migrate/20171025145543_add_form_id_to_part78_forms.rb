class AddFormIdToPart78Forms < ActiveRecord::Migration
  def change
    add_column :part7_8_forms, :form_id, :integer
  end
end
