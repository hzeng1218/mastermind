class Mastermind
    @@possible_colors = ['white', 'black', 'red', 'blue', 'yellow', 'green']
    def initialize
        @board = []
        4.times do 
        @board << @@possible_colors.sample
        end
    end
    def guess
        guess_array = []
        color = ''
        4.times do
            puts "Pick a color (white, black, red, blue, yellow, green"
            until @@possible_colors.include?(color)
                color = gets.chomp
                guess_array << color
            end
            color = ''
        end
        guess_array
    end
    def compare(guess_array)
        if guess_array == @board
            p "You matched good!"
        end
        0.upto(3) do |index|
            correct_spots = 0
            if guess_array[index] == @board[index]
                correct_spots += 1
            end
            "You have #{correct_spots} spots correct"
        end
    end

    def game
        12.times do
            guess
            compare(guess)
        end
    end
end

game1 = Mastermind.new
game1.game