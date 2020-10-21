 x Using Ruby on Rails for the project - ran rails new workouts to start the project 

 x Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) - User has_many workouts

 x Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) - workouts belongs_to Users and Trainers

 x Include at least two has_many through relationships - User has_many Trainers through Workouts, Trainers has_many Users through workouts

 x Include at least one many-to-many relationship - User has_many Trainers through Workouts, Trainers has_many Users through workouts

 x The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) - name, workout_type, time, level

 x Include reasonable validations for simple model objects - validates :name, :workout_type, :time, :level, presence: true
 
 x Include a class level ActiveRecord scope method - scope :search_by_time, -> (workout_type) {where("workout_type = ?", workout_type)}
 x Include signup (how e.g. Devise)
 x Include login (how e.g. Devise)
 x Include logout (how e.g. Devise)
 x Include third party signup/login (how e.g. Devise/OmniAuth) - facebook
 x Include nested resource show or index (URL e.g. users/2/recipes) - trainers/5/workouts
 x Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) - trainers/5/workouts/new
 x Include form display of validation errors (form URL e.g. /recipes/new) - validation for signup, login, etc...