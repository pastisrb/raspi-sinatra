require "pstore"

class Database
  
  def initialize(path)
    @store = PStore.new(path)
    # @base.ultra_safe = true
  end
  
  def unread
    @store.transaction do
      @store[:unread] || 0
    end
  end
  
  def unread=(count)
    @store.transaction do
      @store[:unread] = count.to_i
    end
  end

end

# require "pathname"
# 
# class Database
#   
#   def initialize(file_path)
#     @file_path = Pathname.new(file_path)
#   end
# 
#   def read
#     @file_path.read
#   end
# 
#   def write(data)
#     @file_path.open('w') do |f|
#       f.write(data)
#     end
#   end
#   
# end