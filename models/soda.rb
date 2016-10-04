require 'active_record'

#
class Soda < ActiveRecord::Base
  validates :name, presence: true
end
