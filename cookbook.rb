class Cookbook
  def intialize
    @recipes = []
  end

  def all
    @recipes
  end

  def add(recipe)
    @recipes << recipe
  end

  def destroy(index)
    @recipes.delete_at(index)
  end

end
