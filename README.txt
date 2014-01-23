The layout of the UI is comprised of index.html, spork.css, and intro.js. It also uses images that I rendered using inkscape in the home directory.

To begin setting up the rails application, I ran the command:

  1 rails generate model serving usdaId:integer name:string group:string kcal:float protein:f    loat carb:float fat:float vitA:float vitB1:float vitB2:float vitB3:float vitB5:float vitB    6:float vitB6:float vitB9:float vitB12:float vitC:float vitD:float vitE:float fiber:float     potassium:float calcium:float phosphorus:float magnesium:float manganese:float iron:floa    t sodium:float copper:float zinc:float selenium:float fluoride:float

  This creates a model for a database object called a serving

The directory 'parse' contains a file defining what a serving object is called 'serving.rb'. The file parser.rb parses the USDA ascii databases FOOD_DES.txt and NUT_DATA.txt. For more information on how these databases are formatted, see the pdf called 'sr25_doc.pdf' in the same directory. When ran, parser.rb outputs a file called out.txt

Then, I copied the file out.txt to the directory rails/spork2/db, and rename it seeds.rb, replacing the old seeds.rb.

By running the command: '$ rake db:seed --trace', rails used the output file seeds.rb to construct a database containing over 8000 servings.

Then in the rails/spork2/app/views/servings directory, I modefied the index.html.erb file so that it showed the servings in a scroll menu with a search form when looking at the servings index page. When running the rails server with the command 'rails server', this page can be found at localhost:3000/servings. I also removed the link to the individual serving view, in hopes to display it side by side the servings index later on.

In the rails/spork2/app/controllers/ directory, I edited the servings_controller.rb file so that the index method uses the search form input to construct sql commands for searching the database according to search parameters, and then show the corresponding servings.
