# Editing Forms
  * Foodbank needs the ability to edit/make changes to the forms. We need to implement the following:
    * In the index.html.haml file, need to fix the path for "Edit Agency"
    * Need to add this to the controller
    ```ruby
    def edit
        @movie = Movie.find params[:id]
    end
    ```
    
