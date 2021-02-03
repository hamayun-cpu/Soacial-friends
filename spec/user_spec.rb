require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validation' do
    u = User.new(email: 'ex@example.com.com', name: 'example', password: '123456')
    it 'should have a user' do
      u.name = nil
      expect(User.new).to_not be_valid
    end
  end
end

RSpec.describe User, type: :model do
  describe 'validation' do
    it 'should have a valid user' do
      expect(User.new(name: 'example', email: 'ex@example.com', password: '123456')).to be_valid
    end
  end
end
