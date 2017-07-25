class MealProgram < ActiveRecord::Base
    belongs_to :meal_programs
    #validates_numericality_of :NumMealsServeredLastMonth, on: :create, :allow_nil => true
 

    
end