class Session < ActiveRecord::Base
belongs_to :trainer
belongs_to :client

end