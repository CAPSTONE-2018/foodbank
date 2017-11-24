class AddForeignKeyToEfPrograms < ActiveRecord::Migration
  def change
    add_foreign_key :ef_programs, :forms
  end
end
