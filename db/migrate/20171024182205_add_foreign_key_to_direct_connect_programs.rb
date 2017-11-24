class AddForeignKeyToDirectConnectPrograms < ActiveRecord::Migration
  def change
    add_foreign_key :direct_connect_programs, :forms
  end
end
