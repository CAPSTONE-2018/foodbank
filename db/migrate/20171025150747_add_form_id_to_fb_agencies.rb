class AddFormIdToFbAgencies < ActiveRecord::Migration
  def change
    add_column :fb_agencies, :form_id, :integer
  end
end
