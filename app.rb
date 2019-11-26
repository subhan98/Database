require 'sinatra/base'
require_relative './lib/list'
class BookmarkManager < Sinatra::Base

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end
end

#run! if app_file == $0
