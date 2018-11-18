# Exercise 1 

Setup 

From project directory run below commands to have all dependencies 
    
    Gem install bundler 
    bundle install 

Running tests
You can run the tests directly with the cucumber command.

Run cucumber directly
To run tests directly using Cucumber, simply issue the command:

	cucumber
The above command runs all the tests inside the feature folder but that is not what you want sometimes. To run single individual tests you have to specify the line numbers as below:.

	cucumber features/values_test.feature:9
This will run the test scenario at line number 9 in the file features/main.feature.

