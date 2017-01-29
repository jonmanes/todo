class List < ActiveRecord::Base
  validates_presence_of :name, :permissions, on: :create
end
