class Trainer < ActiveRecord::Base
has_many :sessions
has_many :clients, through: :sessions


    def announce_name
        "Hey there! I'm #{name}"
    end

    def announce_rating
        "My overall rating #{rating}"
    end
    
end