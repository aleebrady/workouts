# README

Run rails s and access localhost:3000

Models - Users, workouts, trainer, reviews. 
 - User has_many workouts, trainers, and reviews.
 - Workout is the join-table, belongs_to User and Trainer models
 - Trainer has_many workouts, reviews, and Users through workouts  

Views - Has signup, login, CRUD for join-table, displays trainer, workout, an review information. 

Controllers - will have controller for each model.