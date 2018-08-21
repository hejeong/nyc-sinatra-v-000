class FiguresController < ApplicationController
  get '/figures/new' do
    erb :'figures/new'
  end

  post '/figures' do
    @figure = Figure.create(name: params["figure"]["name"])
    if !params["figure"]["title_ids"].empty?
      params["figure"]["title_ids"].each do |id|
        @figure.titles << Title.find_by_id(id)
      end
    else

    end

    if !params["figure"]["landmark_ids"].empty?
      params["figure"]["landmark_ids"].each do |id|
        @figure.landmarks << Landmark.find_by_id(id)
      end
    end
  end
end
