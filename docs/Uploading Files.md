# Uploading a File to the Database
  * We were able to figure it out inside a project we did in software engineering but didn't have enough time to implement it in this project. I will provide the source code and what files to implement it in.
  * Inside the controller add:
  
    ```ruby
    def import
            if params[:file].nil?
                flash[:warning] = "Please Select a File"
                redirect_to "CORRECT PATH" notice: "Not Imported."
            else
                Agency.import(params[:file])
                flash[:notice] = "Data imported"
                redirect_to "CORRECT PATH" notice: "Data Imported."
            end
    end
    ```
  * Under the views>fb_agencies>index.html.haml add:
  ```haml
  %h1 Import:
  = form_tag import "CORRECT PATH", multipart: true do
      = submit_tag 'Import'
      = file_field_tag :file
  '''
  
    
  
