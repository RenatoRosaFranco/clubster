# sanatizer:string
class Metting < ApplicationRecord
  self.table_name = 'meetings'
  self.primary_key = 'id'

  belongs_to :user
  belongs_to :club
end
