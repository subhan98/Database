require 'sinatra/base'
require_relative './lib/bookmark'
class BookmarkManager < Sinatra::Base


  get '/bookmarks' do
    p ENV
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get'/add_bookmark' do
    erb :addbookmark
  end

  post '/enter_url' do
    @info = params[:url]
    Bookmark.create(@info)
    redirect('/bookmarks')
  end

  end

#run! if app_file == $0
