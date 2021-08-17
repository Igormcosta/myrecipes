require "test_helper"

class RecipesTest < ActionDispatch::IntegrationTest
  
  def setup
    @chef = @chef.create!(chefname: "Igor", email: "Igor@example.com")
    @recipe = Recipe.create(name: "vegetable sautee", description: "great vegetable sautee, add vegetable and oil")
    @recipe2 = @chef.recipes.build(name: "chicken saute", descriprion: "great chicken")
    @recipe2.save
  end

  test "should get recipes index" do
    get recipes_path
    assert_response :success
  end

  test "should get recipes listing" do
    get recipes_path
    assert_template 'recipes/index'
    assert_match @recipe.name, response.body
    assert_match @recipe2.nome, response.body
  end

end
