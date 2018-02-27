f = File.open("/Users/zackfrank/actualize/exercises/kata_4/weather.dat")

f_lines = f.read.split("\n")

# puts f_lines

# puts f.read.split(1)

# puts f_lines[2]

column_headings = f_lines[0].split     # creates array containing column headers

index = 2
rows = []

until f_lines[index] == nil
  rows << f_lines[index].split
  index += 2
end

index = 0
index2 = 0
weather = {}
all_weather = []

# until rows[index] == nil

until rows[index] == nil
  until index2 == 3
   weather[column_headings[index2]] = rows[index][index2]
   index2 += 1
  end
  index2 = 0
  index += 1
end

  p all_weather