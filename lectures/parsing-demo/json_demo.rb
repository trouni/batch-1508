require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

# PARSING
serialized_json = File.read(filepath) # Serialized means the JSON is still a string

# We need to parse the serialized JSON to use it as a Hash
beatles = JSON.parse(serialized_json)

# STORING

beatles = { beatles: [
  {
    first_name: "John",
    last_name: "Lennon",
    instrument: "Guitar"
  },
  {
    first_name: "Paul",
    last_name: "McCartney",
    instrument: "Bass Guitar"
  },
  # etc...
]}

filepath = 'data/new_beatles.json'

File.open(filepath, "wb") do |file|
  file.write(JSON.generate(beatles))
end