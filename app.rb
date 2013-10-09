require 'sinatra'
require_relative 'database'

database = Database.new("data.pstore")

get '/mails' do
  headers({
    'Content-type' => 'application/json',
    'X-Ruby-Brigade' => 'PastisRb',
  })
  body %Q({"unread": #{database.unread}})
end

post '/mails' do
  database.unread = params["unread_mails"]
end
