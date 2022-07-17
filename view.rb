class View
  def initialize(controller)
    @controller = controller
  end

  # WE NEED: Display, User Input (name, description), and index for deleting
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name}: #{recipe.description}"
    end
  end

  def ask_user_for_input(user_input)
    puts "#{user_input.capitalize}?"
    print "> "
    return gets.chomp
  end

  def ask_user_for_index
    puts "What is the number of the recipe you want to delete?"
    print "> "
    return gets.chomp.to_i - 1
  end
end
