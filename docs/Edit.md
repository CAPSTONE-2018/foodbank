# Editing Forms
  * Foodbank needs the ability to edit/make changes to the forms. We need to implement the following:
    * In the index.html.haml file, need to fix the path for "Edit Agency"
    * Need to add this to the controller
    ```ruby
    def edit
        @agency = Agency.find params[:id]
    end
    ```
    * Another suggestion would be creating a edit.html.haml file, that will show the information from the database, along with the ability to save the new information
