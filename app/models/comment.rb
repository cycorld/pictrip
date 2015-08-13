class Comment < ActiveRecord::Base
    belongs_to :dispatch
    belongs_to :destination
end
