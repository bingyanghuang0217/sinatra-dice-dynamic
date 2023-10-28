require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:number_of_dice/:how_many_sides") do
  @random_dice = params.fetch("number_of_dice").to_i
  @random_sides = params.fetch("how_many_sides").to_i
  @rolls = []

  @random_dice.times do
    die = rand(1..@random_sides)

    @rolls.push(die)
  end

  erb(:flexible)
end
