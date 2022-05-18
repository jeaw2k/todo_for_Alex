class Task < ApplicationRecord
    belongs_to :user
    enum priority: {
        pending: 0,
        active: 1,
        completed: 2
      }
end
