class MealProgram < ActiveRecord::Base
    belongs_to :forms
    #validates_numericality_of :NumMealsServeredLastMonth, on: :create, :allow_nil => true
 

    
end