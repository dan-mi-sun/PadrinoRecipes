# Recipe Book App

Let's create an app that models an online cookbook application.

* Fork this repo and clone it as per usual
* Generate padrino models that follows the given model format:
* Generate an admin system that gives you the basic CRUD actions to create the values in your system.
* Generate padrino controllers to action a public-facing website. You wont need to implement a full CRUD system for your visitors; they wont be able to delete for example. Plan your application and think about what actions they will be able to see.
* Create views for your actions with nice layouts, CSS and clean HTML
* Nest your routes so that any models that are dependent on other models include their parent in the URL
* Similarly, nest any dependent models in your forms using fields_for and accepts_nested_attributes_for.
* Send me a pull request when you're done.

# Bonus points

Bonus points for the following:

* Well documented and indented code, HTML, CSS or Ruby
* Covering your models with tests
* Covering your controllers with tests
* Creating a comment system for the recipe page
* Adding the ability to tag recipies
* Adding the ability to add images
* Protecting your web app with a 'private beta' password
