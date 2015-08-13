class Destination < ActiveRecord::Base
    belongs_to :user
    has_many :dispatches
end
