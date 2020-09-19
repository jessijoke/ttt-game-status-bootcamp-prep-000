# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Column 1
  [1,4,7], # Column 2
  [2,5,8], # Column 3
  [0,4,8], # Diagonal 1
  [6,4,2] # Diagonal 2
]


def won?(board)
  WIN_COMBINATIONS.each do |combo|
    arrCount = 0
    combo.all? do |number|
      if number == "X" || number == "O"
        return WIN_COMBINATIONS[arrCount]
      end
    end
    arrCount += 1
    puts arrCount
  end
end
won?(board)

=begin
combo.all? do |number|
  if number == "X" || number == "O"
    return WIN_COMBINATIONS[arrCount]
end
=end