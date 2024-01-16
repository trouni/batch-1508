require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# PARSING

CSV.foreach(filepath, headers: :first_row) do |row|
  puts '==='
  puts "#{row["First Name"]} #{row["Last Name"]} plays the #{row["Instrument"]}"
  # puts "#{row[0]} #{row[1]} plays the #{row[2]}"
  # number of columns in the CSV: row.size
end

# STORING

filepath = "data/new_beatles.csv"

beatles = [
  {
    first_name: 'John',
    last_name: 'Lennon',
    instrument: 'Guitar'
  },
  # {
  #   # ...
  # }
]

CSV.open(filepath, 'wb') do |csv_file|
  csv_file << ["First Name", "Last Name", "Instrument"]
  beatles.each do |beatle_hash|
    csv_file << [beatle_hash[:first_name], beatle_hash[:last_name], beatle_hash[:instrument]]
  end
end
