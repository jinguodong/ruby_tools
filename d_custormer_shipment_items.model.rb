require './my_dbconnect'
require './model_of_mysql'

class D_CUSTORMER_SHIPMENT_ITEMS
	def initialize
		@db = DbConnect.new("localhost", "amazon", "root", "111111")
	end

	def show_tables
		@db.with_db do |conn|
			conn.query('show tables;') do |res|
				_exist = 0
				res.each_hash do |hash|
					hash.each do |k, v| 
						puts "#{k} : #{v}"
						
					end
				end
				return _exist
			end
		end
	end

	def insert_sql_from_file(file_name="D_CUSTORMER_SHIPMENT_ITEMS.sql")

		File.open(file_name, 'r') do |file|
			file.each_line do |line|

			end
		end
	end
end

db = D_CUSTORMER_SHIPMENT_ITEMS.new
res = db.show_tables
