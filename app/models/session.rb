class Session < ActiveRecord::Base
belongs_to :trainer
belongs_to :client




# def display_data
#     self.to_json({:include => { :trainer}
#     }) 
# end


end