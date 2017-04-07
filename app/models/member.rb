class Member < ApplicationRecord
    # association
    has_many :rolls, dependent: :destroy
    has_many :articles
    
    # repeatable scope
    default_scope { order(birthday: :asc) }
    scope :sample, -> { all.sample }
    scope :older, -> { order(birthday: :asc) }

    # collBack exec
    
    # methods
    def roll(history: false)
        rolls = self.rolls
        if history
            return rolls
        end
        rolls.pluck(:name).join(', ')
    end
    
    # extra tasks
    public
        def self.roommate
            arr = %w(함상빈 김용현 송서하 장종현)
            self.where(name: arr)
        end
end
