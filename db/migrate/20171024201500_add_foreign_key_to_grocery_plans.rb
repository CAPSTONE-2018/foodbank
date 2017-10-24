class AddForeignKeyToGroceryPlans < ActiveRecord::Migration
  def change
    add_foreign_key :grocery_plans, :forms
  end
end
