require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  # get '/' do
  # 'Hello world.'
  # end
  get '/bookmarks' do
    #'Bookmark Manager'
    bookmarks = [
          "http://www.makersacademy.com",
          "http://www.destroyallsoftware.com",
          "http://www.google.com"
         ]
 bookmarks.join
  end
end
#run! if app_file == $0
