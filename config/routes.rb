Foodbank:: Application.routes.draw do 
    resources :forms, :fb_agencies, :meal_programs, :grocery_plans, :food_safeties, :direct_connect_programs,
    :ef_programs, :program_procedures, :signature_documents, :proxy_forms, :part_six_forms, :part_seven_eight_forms,
    :users

    
    
        
    
    get '/forms/foodsafety'
    get '/forms/mealplan'
    get '/forms/groceryplan'
    get '/forms/directconnect'
    get '/forms/emergencyfood'
    get '/forms/part6'
    get '/forms/part7_8'
    
    
   get 'signup'  => 'users#new' 
   resources :users
  
   get '/login' => 'sessions#new'
  
   post 'login' => 'sessions#create'
  
   delete 'logout' => 'sessions#destroy'

    
    
    
    root :to => redirect(' /forms')
end
