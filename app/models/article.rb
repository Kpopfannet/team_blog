class Article < ApplicationRecord
    # association
    belongs_to :member
    belongs_to :category
    
    # repeatable scope
    
    # methods
    
    # extra tasks
end
