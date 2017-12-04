Foodbank:: Application.routes.draw do 
    root 'sessions#new'
    #resources :forms, :fb_agencies, :validate_step_fb_agencies, :meal_programs, :grocery_plans, :food_safeties, :direct_connect_programs,
    #:ef_programs, :program_procedures, :signature_documents, :proxy_forms, :part_six_forms, :part_seven_eight_forms,
    resources :fb_agencies, :grocery_plans, :forms

 

=begin
    resource :wizard do
        get :step1
        get :step2
        get :step3
    
        post :validate_step
    end
=end

   # get '/forms/step2'
   # get '/forms/step3'
    #get '/forms/fb_agencies/index'
    #get '/forms/foodsafety' 
    #get '/forms/mealplan'
    #get '/forms/groceryplan'
    #get '/forms/directconnect'
    #get '/forms/emergencyfood'
    #get '/forms/part6'
    #get '/forms/part7_8'
   # get '/forms.css'

   

    get '/forms/foodsafety'
    get '/forms/mealplan'
    get '/forms/groceryplan'
    get '/forms/directconnect'
    get '/forms/emergencyfood'
    get '/forms/part6'
    get '/forms/part7_8'
    get "howto/:howto"=>"howto#show"
    
   get 'signup'  => 'users#new'
   resources :users
  
   get '/login' => 'sessions#new'
  
   post 'login' => 'sessions#create'
  
   delete 'logout' => 'sessions#destroy'

 
end
