class AddForeignKeyToFbAgencies < ActiveRecord::Migration
  def change
    add_foreign_key :fb_agencies, :forms
  end
end
