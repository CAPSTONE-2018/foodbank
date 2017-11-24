class AddFormIdToEfPrograms < ActiveRecord::Migration
  def change
    add_column :ef_programs, :form_id, :integer
  end
end
