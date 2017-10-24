class AddFormIdToMealPrograms < ActiveRecord::Migration
  def change
    add_column :meal_programs, :form_id, :integer
  end
end
