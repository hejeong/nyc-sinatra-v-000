require 'pry'
class FiguresController < ApplicationController
  get '/figures/new' do
    erb :'figures/new'
  end

  post '/figures' do
    figure = Figure.create(name: params["figure"]["name"])
    if params["figure"]["title_ids"] != nil
      params["figure"]["title_ids"].each do |id|
        figure.titles << 
      end
    end
  end
end
