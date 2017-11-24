class AddFormIdToGroceryPlans < ActiveRecord::Migration
  def change
    add_column :grocery_plans, :form_id, :integer
  end
end
