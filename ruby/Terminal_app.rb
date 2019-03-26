require 'terminal-table'

data = {name: 'Simon', subject: 'plant phys'}
rows = []
rows << ['Session', 'Time_interval','Name','Title']

rows << ['1', data[:name]]
rows << ['1', 2]
rows << ['1', 3]
table = Terminal::Table.new :rows => rows
puts table