class Club < ApplicationRecord
  self.table_name = 'clubs'
  self.primary_key = 'id'

  belongs_to :user

  has_many :meetings, dependent: :destroy
  has_many :members,  dependent: :destroy
end
