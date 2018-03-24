class Network < ApplicationRecord
  belongs_to :networker_one, class_name: 'User'
  belongs_to :networker_two, class_name: 'User'
end
