require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  # USER ACTIONS
  # Create a display_recipes method as we will use it more than once
  def list_recipes
    display_recipes
  end

  def add_recipe
    # 1. Ask user for a name - view
    name = @view.ask_user_for_input("name")
    # 2. Ask the user for a description - view
    description = @view.ask_user_for_input("description")
    # 3. Create an instance of that recipe, ie the model
    recipe = Recipe.new(name, description)
    # 4. Send the recipe to be stored in the cookbook database
    cookbook.add(recipe)
    #5. Display the recipes
    display_recipes
  end

  def destroy_recipe
    # 1. Display recipes
    display_recipes
    #2. Ask the user for the index of the recipe to remove
    index = @view.ask_user_for_index
    #3. Remoce the recipe from the cookbook database
    cookbook.destroy(index)
    # 4. display the recipes again
    display_recipes
  end

  def display_recipes
    # 1. Grab the recipes from the database
    recipes = @cookbook.all
    # 2. Display the recipes in the view
    @view.display(recipes)
  end
end
