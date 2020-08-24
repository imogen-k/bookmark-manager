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



  run! if app_file == $0
end
