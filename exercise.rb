classroom_seats = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

classroom_seats.each_with_index do |row, index|
  row.each_with_index do |name, seat|
    if name == nil
      p "Row #{index + 1} seat #{seat + 1} is free."
      p "Do you want to sit there? (y/n)"
      answer = gets.chomp
      if answer == "y"
        p "What is your name?"
        name = gets.chomp
        classroom_seats[index][seat] = name
      end
    end
  end
end

p classroom_seats
