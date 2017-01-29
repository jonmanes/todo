class Item < ActiveRecord::Base
  validates_presence_of :description, on: :create
end
