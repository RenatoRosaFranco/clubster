class Metting < ApplicationRecord
  self.table_name = 'mettings'
  self.primary_key = 'id'
  
  belongs_to :user
  belongs_to :club
end
