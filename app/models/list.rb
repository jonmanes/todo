class List < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :name, :permissions, on: [:create, :update]

  validates :permissions, :inclusion => { :in => %w(private viewable open),
    :message => "%{value} is not a valid permission" }

end
