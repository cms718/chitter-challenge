require 'user'

describe User do
  describe '.create' do
    it 'creates a new user in the db' do
      User.create('bob', 'michel', 'itsbob', 'bob@bob.com', 'password')
      result = DatabaseConnection.query('SELECT * FROM users')
      expect(result.first['username']).to eq('itsbob')
    end
  end
end