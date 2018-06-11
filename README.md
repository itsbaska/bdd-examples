# bdd-examples

1. Create ```features``` directory in root directory
2. Create ```whatever.feature``` file to write your scenarios
3. Write scenarios in the Gherkin syntax in your ```.feature``` file
4. Create ```step_definitions``` folder
5. Write step definitions that match your scenarios
    - Given: set preconditions of the scenario
    - When: executes the action/method/function in your app
    - Then: asserts the desired outcome

6. Use ```bundle exec cucumber``` to run the cucumber tests.
