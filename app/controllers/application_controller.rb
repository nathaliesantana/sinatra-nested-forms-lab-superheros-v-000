require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do

    erb :super_hero
  end

  post '/teams' do
    binding.pry
    @team = Team.new(:params)
    params["team"]["members"].each do |member_info|
      member = Team.new(member_info)
    end

    erb :team
  end


end
