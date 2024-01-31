require 'sinatra'

class App < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end
  get '/potato' do
    "<p>Boil this</p>"
  end

  get '/dice' do
    dice_roll = rand(1..6)
    {roll: dice_roll}.to_json
  end

  get '/games/:id' do
    game = Game.find(params[:id])
    game.to_json
  end


end

run App
