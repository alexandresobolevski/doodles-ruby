require 'csv'

class BookInStock
  attr_reader :isbn
  attr_accessor :price

  def initialize(args)
    @isbn = args.fetch(:isbn)
    @price = Float(args.fetch(:price))
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end

book1 = BookInStock.new({ isbn: '123', price: 123 })
puts book1
book1.price = 123 * 0.75
puts book1.price

class CsvReader
  def initialize
    @books_in_stock = []
  end

  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, { headers: true }) do |row|
      @books_in_stock << BookInStock.new({ isbn: row["ISBN"], price: row["Amount"] })
    end
  end

  def total_value_in_stock
    sum = 0.0
    @books_in_stock.each {|book| sum += book.price}
    sum
  end
end

reader = CsvReader.new
ARGV.each do |csv_file_name|
  STDERR.puts "Processing #{csv_file_name}"
  reader.read_in_csv_data(csv_file_name)
end
puts "Total value = #{reader.total_value_in_stock}"
