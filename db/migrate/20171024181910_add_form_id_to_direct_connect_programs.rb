class AddFormIdToDirectConnectPrograms < ActiveRecord::Migration
  def change
    add_column :direct_connect_programs, :form_id, :integer
  end
end
