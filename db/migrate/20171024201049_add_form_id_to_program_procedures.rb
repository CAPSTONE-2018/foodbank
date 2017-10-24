class AddFormIdToProgramProcedures < ActiveRecord::Migration
  def change
    add_column :program_procedures, :form_id, :integer
  end
end
