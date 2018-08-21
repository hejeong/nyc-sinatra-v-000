require 'pry'
class FiguresController < ApplicationController
  get '/figures/new' do
    erb :'figures/new'
  end

  post '/figures' do
    figure = Figure.create(name: params["figure"]["name"])
    if params["figure"]["title_ids"] != nil
      params["figure"]["title_ids"].each do |id|
        figure.titles << Title.find_by_id(id)
      end
    end
    if params["figure"]["landmark_ids"] != nil
      params["figure"]["landmark_ids"].each do |id|
        figure.titles << Landmark.find_by_id(id)
      end
    end
  end
end
