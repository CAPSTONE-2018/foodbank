class AddForeignKeyToMealPrograms < ActiveRecord::Migration
  def change
    add_foreign_key :meal_programs, :forms
  end
end
