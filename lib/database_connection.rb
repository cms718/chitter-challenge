require 'pg'

class DatabaseConnection 
  def self.setup(database)
    @connection = PG.connect(dbname: database)
  end

  def self.connection
    @connection
  end

  def self.query(query_string)
    @connection.exec(query_string)
  end
end
