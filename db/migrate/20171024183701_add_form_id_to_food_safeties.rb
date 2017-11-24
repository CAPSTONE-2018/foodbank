class AddFormIdToFoodSafeties < ActiveRecord::Migration
  def change
    add_column :food_safeties, :form_id, :integer
  end
end
