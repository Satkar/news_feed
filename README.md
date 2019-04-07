# News Feed
## Problem Statement 
JSON endpoint that returns an array of Post objects in order of newest first, to oldest last. Each Post contains a User object
(the author of the Post), and an array of Comments. Each Comment will also include the User object of the Comment's author.

* Ruby version
  `2.5.1`
* Rails vesrion - 'rails', '~> 5.2.3'

* DataBase - MySQL

* Gem Dependencies
  * ```rspec``` for unit test
  * ```faker``` for data creation
  * ```active_model_serializers``` for model serialization
  
* Steup - Go to the project directory and run
  ```
  bin/setup
  ``` 
  Above command will do the following for you
  * Executes bundle install
  * Prepares Database
  * Seeds Data
  * Runs Specs
  * Removing old logs and tempfiles
  * Starting application server on port 9000 please open http://localhost:9000/

* How to run the test suite
  ```
  bundle exec rspec
  ```
* How to run the server locally
  
  Go to the progect directory and run a command as below 
  ```
  bin/rails s
  ```
* Query Fetching logic 
  ```
  # This is a default scope on the Post to get recently created record at the top
  default_scope { order('created_at desc') }
  
  PER_PAGE = 50
  
  # Fetch posts with user, comments and user associated with the comments
  def self.fetch_records(page_number=0)
    start_at = page_number.to_i * PER_PAGE
    includes(:user, comments: [:user]).limit(PER_PAGE).offset(start_at)
  end
  ```
  
