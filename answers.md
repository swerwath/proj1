# Q0: Why is this error being thrown?

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
home_controller sets @pokemon to a random Pokemon from our table where trainer_id hasn't been set yet. Then it is displayed on the page by index.html.erb

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The button sends a patch request to capture with params: id:@pokemon.
# Question 3: What would you name your own Pokemon?
Howardcharlessamjunyuwarrenjuno-izard, of course!

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
redirect_to "/trainers/#{pkmn.trainer_id}"
Basically just goes to the trainer page of the Pokemon we just damaged, needed the /trainers/ and the trainer_id of the pokemon in question

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This line takes any error messages that the @pokemon object has generated (from failing verification) and displays them. Hopefully, this will be empty.

# Give us feedback on the project and decal below!
The project was a lot of fun, though I often found myself scrolling through lecture recordings to try and figure out what to do next. That being said, it was a good learning experience in reading Rails documentation

# Extra credit: Link your Heroku deployed app
http://infinite-shore-79998.herokuapp.com/
