require 'gmail'

class MailFetcher

  def initialize
    # @gmail = Gmail.new("login", "password")
    # @gmail.peek = true
  end

  def count_unread
    # @gmail.inbox.emails(:unread).select { |email|
    #   email.subject.include?('dingdong')
    # }.count
    rand(10)
  end

end