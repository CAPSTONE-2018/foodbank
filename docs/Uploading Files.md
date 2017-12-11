# Uploading a CSV File/Excel File to the Database
  * We were able to figure it out inside a project we did in software engineering but didn't have enough time to implement it in this project. I will provide the source code and what files to implement it in. Where you see CORRECT PAth, you are going to have to change that to the correct path.
  * Here are two useful resources that we used: https://www.youtube.com/watch?v=SelheZSdZj8&t=77s and  https://github.com/railscasts/362-exporting-csv-and-excel
  * Inside the controller add:
  
    ```ruby
    def index
        @agencies = Agency.all
        respond_to do |format|
            format.html
            format.csv {render text: @agencies.to_csv, nil:ignore}
            format.xls { send_data @agencies.to_csv(col_sep: "\t") }
        end
    end
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
 
  
    
  
