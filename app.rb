require 'sinatra/base'
require 'rspec'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.view_bookmarks
    erb(:bookmarks)
  end

  get "/add_bookmark" do 
      erb :add_bookmark
  end

  post "/post_bookmark" do 
    Bookmarks.add_bookmark(params[:url])
    redirect "/bookmarks"
  end

  run! if app_file == $0
end
