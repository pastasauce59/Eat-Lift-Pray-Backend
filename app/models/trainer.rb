class Trainer < ActiveRecord::Base
has_many :sessions
has_many :clients, through: :sessions


def announce_name
    "Hey there! I'm #{name}"
end

def announce_rating
    "My overall rating #{rating}"
end

# def display_data
#     self.to_json({:include => { :sessions => {
#                      :include => { :client => {
#                       :only => [:name, :age] } }
#                   }, 
#                 },
#                 :methods => [:announce_name, :announce_likes]
#     }) 
#  end
end