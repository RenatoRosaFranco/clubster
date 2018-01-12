require 'rails_helper'

RSpec.describe Club, type: :model do
  context 'respond to all attributes' do
    subject { Club.new }
    it 'return a valid club' do
      expect(subject).to respond_to :name
      expect(subject).to respond_to :description
      expect(subject).to respond_to :tags
      expect(subject).to respond_to :user
    end
    it 'belongs to user' do
      expect(subject).to belongTo :user
    end
  end
end
