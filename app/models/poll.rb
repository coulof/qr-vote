class Poll < ApplicationRecord
    validates :question, presence: true
    has_many :answers
end
