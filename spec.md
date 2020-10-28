# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
User has_many, Instruments, UserGenres, UserRoles, UserSessions. 
Studio has_many Equipments, StudioSessions. 
StudioSessions has_many UserSessions
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
Equipment belongs_to Studio. Instrument belongs_to User. 
StudioSession belongs_to Studio. 
UserGenre belongs_to User, Genre. 
UserRole belongs_to User, Role. 
UserSession belongs_to User, StudioSession.
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
Genre has_many Users through UserGenres, Users has_many Genres through UserGenres. 
Roles has_many Users through UserRoles, Users has_many Roles through UserRoles. 
StudioSessions has_many Users through UserSessions, Users has_many StudioSessions through UserSessions. 
Studios has_many UserSessions through StudioSessions, has_many Users through UserSessions.
User has_many Genres through UserGenres, has_many Roles through UserRoles, has_many StudioSessions through UserSessions, has_many Studios through StudioSessions
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
Genre has_many Users through UserGenres, Users has_many Genres through UserGenres. 
Roles has_many Users through UserRoles, Users has_many Roles through UserRoles. 
Studios has_many UserSessions through StudioSessions, has_many Users through UserSessions.
User has_many Genres through UserGenres, has_many Roles through UserRoles, has_many StudioSessions through UserSessions, has_many Studios through StudioSessions
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
StudioSesssions
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
User - Validates name presence and uniqueness, validates email presence, uniqueness and format, validates picture presence.
Studio - Validates name presence and uniqueness, validates location presence, validates hourly_rate presence and numericality, validates picture presence.
StudioSession - Validates session_time uniqueness, validates duration presence and numericality, validates studio_id presence, validates users presence.
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
User - managers, not_managers, URL: studio_sessions/new
- [x] Include signup (how e.g. Devise)
Rails methods
- [x] Include login (how e.g. Devise)
Rails methods
- [x] Include logout (how e.g. Devise)
Rails methods
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
OmniAuth - Google Strategy
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
users/1/studio_sessions
users/1/studio_sessions/1
studios/1/studio_sessions
studios/1/studio_sessions/1
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
studios/1/studio_sessions/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
/studio_sessions/new
/studios/new
/users/new
/studio_sessions/edit
/studios/edit
/users/edit
Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
