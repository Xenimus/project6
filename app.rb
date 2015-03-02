# app.rb
require 'sinatra'
require 'holidapi'



class MyWebApp < Sinatra::Base
  get '/' do
    puts params
    @holidays = HolidApi.get(month: params['month']|| Time.now.month, country: params['country']||'us',
    year: params['year']|| Time.now.year)
    erb :index
  end
end
