# Q0: Why is this error being thrown?
There does not exist a Pokemon model yet, so it considers HomeController::Pokemon as a constant.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear?
The random Pokemon are generated from the database and are invoked in the 'home/show.html.erb' view. The common factor
is that they are one of the four Pokemon - Squirtle, Charmander, Bulbasaur, Pikachu - seeded into the database.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It displays a button for a specific task (here, PATCH) and the "capture_path(id: @pokemon)" links it to the capture path, as defined in routes.db. The "(id: @pokemon)" is the id of the pokemon that was captured and is passed as a parameter to the respective method in the controller (Pokemon#capture).

# Question 3: What would you name your own Pokemon?
Hamunatra

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed trainer_path(Trainer.find(params[:tr])) into the redirect_to. It is a path and it required the instance of the respective trainer. I supplied that by looking up in the trainer database using the id of the trainer, which I had obtained as a param - ':tr' - from the clicked pokemon damage button of the corresponding trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
In application.html.erb, the last part renders 'layouts/messages' and so when a validation fails, the error message becomes part of @pokemon.errors, which we just convert to a sentence in order to flash it.

# Give us feedback on the project and decal below!
The project was cool and you guys are awesome! Though I'm not sure why but I feel that I haven't learnt much so far in this class.
I do not feel confident about being adequately equipped with the necessary skills to create a Rails app from scratch on my own but I guess this issue could probably solved in the next few weeks as we delve deeper into more advanced topics. :)

# Extra credit: Link your Heroku deployed app
https://shielded-ridge-91164.herokuapp.com/