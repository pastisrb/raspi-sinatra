require 'pathname'
require_relative 'mail_fetcher'
require_relative 'database'

task :default => [:usage]

task :usage do
  puts "Fais pas ci, fais pas ça !"
end

task :count_unread do
  database = Database.new("data.pstore")
  puts count = MailFetcher.new.count_unread
  database.unread = count
end