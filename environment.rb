require 'pg'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  database: 'soda',
  username: 'Fitchburgh',
  password: ''
)
