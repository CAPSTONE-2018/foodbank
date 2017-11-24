class AddForeignKeyToProxyForms < ActiveRecord::Migration
  def change
      add_foreign_key :proxy_forms, :forms
  end
end
