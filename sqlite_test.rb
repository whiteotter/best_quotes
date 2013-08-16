require 'sqlite3'
require 'rulers/sqlite_model'

class MyTable < Rulers::Model::SQLite; end
STDERR.puts MyTable.schema.inspect

# mt = MyTable.create("title" => "It happened! MT")
my = MyTable.create "title" => "I saw it!"
my["title"] = "I saw it again!"
my.save!

my2 = MyTable.find my["id"]
puts my2["title"]

# puts "Count: #{MyTable.count}"

# top_id = mt["id"].to_i
# (1..top_id).each do |id|
#   mt_id = MyTable.find(id)
#   puts "Found title #{mt_id["title"]}."
# end

# puts my.inspect
# my["body"] = "I really did! For realio!"
# puts my.inspect
# my.save!

# mt2 = MyTable.find(mt["id"].to_i)
# puts "Title: #{mt2["body"]}"