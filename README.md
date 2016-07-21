## Advanced Association Challenge

### Setup
You are provided with migrations and models for some resources. You will need to create join tables and their corresponding models if necessary (it will be necessary to satisfy all the requirements). If you need to use polymorphic associations, you will need to add fields to those tables as well. Do **not** modify any field already in an existing table, you may only add fields to them. 

### Overview

You have a film review application. You have users that can use your application to vote on films, performers, and reviews. They can also review films and performers. Categories exist to keep films organized. All films relate to one category and only one (to simplify things a bit). We have images that relate to films, performers, and users. All of these can have many images, but images can only belong to one resource. Your challenge is to implement what we've talked about today (advanced realationships). A detailed list of the relationships you are challenged to create are below. If anything is unclear, please ask!

I suggest first creating a schema to plan out the relationships between the entities, next creating your associations, then hopping into the rails console to see if they are working correctly. I also encourage you to write tests (time permitting). I want you to focus on finishing the relationships before writing tests.

### Requirements

A category can have many films.

A film can belong to just one category.

A film has many performers.

A performer has many starred in films. 

A performer has many images.

An user writes many reviews on different films.

A review has one author (user).

A film has many reviews.

A review is written about one film.

A review can also be written about a user.

A review can also be written about a perfomer.

An user can vote (once) on a specific film.

An user can vote (once) on a specific review.

A film has many votes (from different users).

A review has many votes (from different users).

An user has many images.

A film has many images.

An image either belongs to a film, a performer, or a user (not both).

### Submitting your work
Fork this challenge. Fulfill the requirements. Upload a picture of your database schema to the root of your application or the bottom of the README. Feel free to take a picture of a whiteboard or use an online schema designer. Create a pull request back to this repository with all your work.
