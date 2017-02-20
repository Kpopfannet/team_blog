class Member < ApplicationRecord
    # association
    has_many :rolls, dependent: :destroy
    has_many :articles
    
    # repeatable scope
    scope :sample, -> { all.sample }
    scope :older, -> { order(birthday: :asc) }

    # methods
    def roll(history: false)
        rolls = self.rolls
        if history
            return rolls
        end
        rolls.pluck(:name).join(', ')
    end
    
    # extra tasks
end
