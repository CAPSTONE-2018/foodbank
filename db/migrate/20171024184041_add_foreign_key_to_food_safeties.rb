class AddForeignKeyToFoodSafeties < ActiveRecord::Migration
  def change
    add_foreign_key :food_safeties, :forms
  end
end
