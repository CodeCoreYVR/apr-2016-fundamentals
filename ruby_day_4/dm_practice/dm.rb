require 'data_mapper'

DataMapper.setup(:default, "sqlite://#{Dir.pwd}/project.db")

class User
  # we include a module from DataMapper that include a bunch of methods
  # that are handy to connect with the database
  # the table name will be a pluralized version of the class name. The table
  # name for User class will be users (convention from DataMapper)
  include DataMapper::Resource

  # we define properties which will match to column in the database
  # Serial will create a field that is INTEGER PRIMARY KEY AUTOINCREMENT
  property :id, Serial

  # String will create a VARCHAR(50)
  property :first_name, String
  property :last_name, String
  property :email, String
  property :phone_number, String

  # Text will create a `text` column in the database (can store long strings)
  property :bio, Text

end

# auto_upgrade will automatically create the table if it doens't exit. If the
# table exists it will only add the field that don't exits but it won't remove
# fields that have been removed.
DataMapper.auto_upgrade!
