# Q0: Why is this error being thrown?

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
home_controller sets @pokemon to a random Pokemon from our table where trainer_id hasn't been set yet. Then it is displayed on the page by index.html.erb

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The button sends a patch request to capture with params: id:@pokemon.
# Question 3: What would you name your own Pokemon?
Howardcharlessamjunyuwarrenjuno-izard, of course!

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
