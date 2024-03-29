# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer:
    I believe the Model is the "shape" of the database 
    The View is what we use to control what the user sees 
    The Controller is what we use to configure the database to be used

  Researched answer:
    MVC is an application design model comprised of three interconnected parts. They include the model (data), the view (user interface), and the controller (processes that handle input).
    1. Model:
      A model is data used by a program. This may be a database, file, or a simple object, such as an icon or a character in a video game.

    2. View:
      A view is the means of displaying objects within an application. Examples include displaying a window or buttons or text within a window. It includes anything that the user can see.

    3. Controller:
      A controller updates both models and views. It accepts input and performs the corresponding update. For example, a controller can update a model by changing the attributes of a character in a video game. It may modify the view by    displaying the updated character in the game.

    Source: https://techterms.com/definition/mvc

2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the "routes" in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the "Controller" in the file "statics controller"
  ```
  class "StaticsController" < ApplicationController
    def "about"
      render "about.html.erb"
    end
  end
  ```

  Step 3: Create the View in the file "about.html.erb"
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.


/users/       method="GET"     # :controller => 'users', :action => 'index' 

  This displays all the users

/users/1      method="GET"     # :controller => 'users', :action => 'show'

  This displays a specific user, in this case user with id of 1

/users/new    method="GET"     # :controller => 'users', :action => 'new'

  This gives use the form to create a new user

/users/       method="POST"    # :controller => 'users', :action => 'create'

  This uses the form and actually create the user into the users 

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'

  This allows us to edit the specific user, this case user 1

/users/1      method="PUT"     # :controller => 'users', :action => 'update'

  This updates the specific user this case user 1

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'

  This allows us to delete user 1

3b. Which of the above routes must always be passed params and why?

  I believe the show, edit, update, and destroy actions need to be passed a params in order to specify one of the users 

4. What is the public folder used for in Rails?

  Your answer:

    My mind is shooting a blank here. lol

  Researched answer:
    "In many MVC frameworks (e.g. Rails), the public folder is used to serve static files. So for example, you often see 404.html, 500.html and favicon.ico files in there 
    when creating the project through the "usual" means provided by such frameworks. These are "dumb" files that don't interact w/the backend. The assumption is that 
    these don't require a context generated by your controllers to render them; for example the 404.html might just express that nothing exists at this URL, 
    where the URL is something that isn't matched by the framework's routing system."

    "The role of the public folder is to have those views that would be publicly accessible in the application. For example, a Login page would generally be a page that anonymous users could access to then log into the site."

    Source: https://softwareengineering.stackexchange.com/questions/300701/what-is-the-role-of-the-public-folder-in-mvc-web-applications

5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

  get '/game/:guess' => 'main#game'


6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer: 
    It helps developers know what response that is getting requested? Shooting another blank here. lol

  Researched answer:
    HTTP defines a set of request methods to indicate the desired action to be performed for a given resource. Although they can also be nouns, these request methods are sometimes referred as HTTP verbs. Each of them implements a different semantic, but some common features are shared by a group of them: e.g. a request method can be safe, idempotent, or cacheable.

   <form method="post" ...>
    <input type="hidden" name="_method" value="put" />
     ... 
      is an example

    Source: https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
            https://stackoverflow.com/questions/8054165/using-put-method-in-html-form

7. Name two rails generator commands and what files they create:

  Your answer: 
    rails generate scaffold - I think it generates nearly all the tools you need for a rails application, Matt said to not do this as it doesn't really teach you much

    rails generate resource - I believe it generates all the routings that you need in order to utilize the CRUD operations in your Controllers

  Researched answer: 
    rails generate rspec:model widget - will create a new spec file in spec/models/widget_spec.rb
  
    rails generate migration AddFieldToModel field:type - Add Column to Existing Model

  Source: https://dev.to/alicannklc/rails-generator-cheatsheet-1dfn

8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1. AJAX - 
      Ajax stands for Asynchronous JavaScript and XML. Ajax is not a single technology; it is a suite of several technologies. Ajax incorporates the following −

      XHTML for the markup of web pages
      CSS for the styling
      Dynamic display and interaction using the DOM
      Data manipulation and interchange using XML
      Data retrieval using XMLHttpRequest
      JavaScript as the glue that meshes all this together
      Ajax enables you to retrieve data for a web page without having to refresh the contents of the entire page. In the basic web architecture, the user clicks a link or submits a form. The form is submitted to the server, which then sends back a response. The response is then displayed for the user on a new page.

      When you interact with an Ajax-powered web page, it loads an Ajax engine in the background. The engine is written in JavaScript and its responsibility is to both communicate with the web server and display the results to the user. When you submit data using an Ajax-powered form, the server returns an HTML fragment that contains the server's response and displays only the data that is new or changed as opposed to refreshing the entire page.

2. How Rails Implement Ajax - 

      Rails has a simple, consistent model for how it implements Ajax operations. Once the browser has rendered and displayed the initial web page, different user actions cause it to display a new web page (like any traditional web application) or trigger an Ajax operation −

      Some trigger fires − This trigger could be the user clicking on a button or link, the user making changes to the data on a form or in a field, or just a periodic trigger (based on a timer).

      The web client calls the server − A JavaScript method, XMLHttpRequest, sends data associated with the trigger to an action handler on the server. The data might be the ID of a checkbox, the text in an entry field, or a whole form.

      The server does processing − The server-side action handler ( Rails controller action )-- does something with the data and returns an HTML fragment to the web client.

      The client receives the response − The client-side JavaScript, which Rails creates automatically, receives the HTML fragment and uses it to update a specified part of the current page's HTML, often the content of a <div> tag.

      These steps are the simplest way to use Ajax in a Rails application, but with a little extra work, you can have the server return any kind of data in response to an Ajax request, and you can create custom JavaScript in the browser to perform more involved interactions.

3. Polymorphic Associations - 
      A slightly more advanced twist on associations is the polymorphic association. With polymorphic associations, a model can belong to more than one other model, on a single association. For example, you might have a picture model that belongs to either an employee model or a product model. Here's how this could be declared:
          class Picture < ApplicationRecord
            belongs_to :imageable, polymorphic: true
          end
          
          class Employee < ApplicationRecord
            has_many :pictures, as: :imageable
          end
          
          class Product < ApplicationRecord
            has_many :pictures, as: :imageable
          end
      You can think of a polymorphic belongs_to declaration as setting up an interface that any other model can use. From an instance of the Employee model, you can retrieve a collection of pictures: @employee.pictures.

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer:
    Besides being delicious, in the world of technology, I totally forgot.

  Researched answer:
    Cookies and Sessions are used to store information. Cookies are only stored on the client-side machine, while sessions get stored on the client as well as a server.

    Session
        A session creates a file in a temporary directory on the server where registered session variables and their values are stored. This data will be available to all pages on the site during that visit.

        A session ends when the user closes the browser or after leaving the site, the server will terminate the session after a predetermined period of time, commonly 30 minutes duration.

    Cookies
        Cookies are text files stored on the client computer and they are kept of use tracking purpose. Server script sends a set of cookies to the browser. For example name, age, or identification number etc. The browser stores this information on a local machine for future use.

        When next time browser sends any request to web server then it sends those cookies information to the server and server uses that information to identify the user.