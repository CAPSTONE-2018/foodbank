class AddFormIdToProxyForms < ActiveRecord::Migration
  def change
     add_column :proxy_forms, :form_id, :integer
  end
end
