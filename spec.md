Specifications for the Sinatra Assessment
Specs:

 xUse Sinatra to build the app
 xUse ActiveRecord for storing information in a database
 ActiveRecord will store new objects into my database as they are created.
 xInclude more than one model class (e.g. User, Post, Category)
 Includes two models: milestone and user
 xInclude at least one has_many relationship on your User model (e.g. User has_many Posts)
 User has many milestones
 xInclude at least one belongs_to relationship on another model (e.g. Post belongs_to User)
 Milestone belongs_to user
 xInclude user accounts with unique login attribute (username or email)
 User model inscludes validations fro uniqness in email and username 
 xEnsure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
 User can read, create, edit and delete their milestones
 xEnsure that users can't modify content created by other users
 With the help of my helper methods and conditional statements in the controllers, users cannot modify other milestones except theirs 
 xInclude user input validations
 Models include validations to ensure no bad data is passed in to my database
 BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
 xYour README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
Confirm

 You have a large number of small Git commits
 Your commit messages are meaningful
 You made the changes in a commit that relate to the commit message
 You don't include changes in a commit that aren't related to the commit message