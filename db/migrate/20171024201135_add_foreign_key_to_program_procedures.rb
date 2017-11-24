class AddForeignKeyToProgramProcedures < ActiveRecord::Migration
  def change
    add_foreign_key :program_procedures, :forms
  end
end
