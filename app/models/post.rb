class Post < ActiveRecord::Base
  belongs_to :student
  belongs_to :topic
end
