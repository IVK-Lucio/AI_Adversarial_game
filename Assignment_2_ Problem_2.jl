#Create 3x3 Board for TicTactToe
board= [[" ", " ", " "],
        [" ", " ", " "],
        [" ", " ", " "]],

#=define code to check who won, and in miniMax algorithm
-1 indicates undesirebale outcome,
+1 indicate desirable
0 indicates neutral
=#

human_win = -1
ai_win =1
tie = 0 #draw

#Define player characters
Player1 = "X"
player2 = "O"

#Get array of tuples of all available (unoccupied) indices in the board to allow the AI to choose from this options
function get_available(board)
        available_pos =[]
        #Go through all elements in array and check if they are unoccupied
        for i in 1:3, j in 1:3
                #check if element is unoccupied
                if board[i][j] == " "
                        #If the element is unoccupied, append the tuple of the indices to the available array
                        push!(available_pos, (i,j))
                end # if
        end # for
        return available_pos
end # function


#check number of available (unoccupied) cells similar to how we did above
function check_available(board)
        available = 0
        for i in 1:3, j in 1:3
                if board[i][j] ==" "
                        available =+1
                end # if
        end # for
        return available
end # function

#check if the board is in a terminal (win or tie) situation
function check_win(board)
        #define p1 & p2 an their propertis to avaoid mixing up with palyer1, player2, human and ai variables
        p1 ="X"
        p2 ="O"

        p1_win = -1
        p2_win = +1
        tie = 0

        #horizontals line checker
        for i in 1:3
                #for every row, check if the elements in a row are the same, and belong to some player (instead of being unoccupied )
                if ((board[i][1] == board[i][2] == board[i]3[]) && (board[i][1] in [p1, p2]))
                        #If row belong to p1, return  signal showing p1 wins
                        if (board[i][1] == board[i][2] == board[i][3] ==p1)
                                return  p1_win
                        #If row belong to p2, return  signal showing p2 wins
                        elseif (board[i][1]== board[i][2] === board[i][3] == p2)
                                return  p2_win
                        end # if
                end # if
        end # for

        #vertical line checker
        for i in 1:3
                #for every column, check if the elements in a column are the same, and belong to some player (instead of being unoccupied )
                if ((board[1][i] == board[2][i] == board[3][i]) && (board[1][i] in [p1, p2]))
                        #If column belong to p1, return  signal showing p1 wins
                        if (board[1][i] == board[2][i] == board[3][i] ==p1)
                                return p1_win
                        elseif (board[1][i] == board[2][i] == board[3][i] ==p2)
                                return p2_win
                        end # if
                end # if

        end # for

        #diagnal (From (1,1) to (3,3)) line checker
        if (board[1][1] == board[2][2] == board[3][3])
                #check if diagnal belongs to p1 and if true, return  signal showing p1 wins
                if (board[1][1] == board[2][2] == board[3][3] ==p1)
                        return p1_win
                #check if diagnal belongs to p2 and if true, return  signal showing p2 wins
                elseif (board[1][1] == board[2][2] == board[3][3] ==p2)
                        return p2_win
                end # if
        end # if

        #If no one won, check if available cells are 0. If they are 0, it is a tie.Else, the game hasnt ended yet so return  nothing
        if check_available(board) == 0
                return tie
        else
                return nothing
        end # if
end # function

#Use minMax algorithm to determine best/worst step
#Board is the game board
#depth is current recusrion depth the algorithm is checking after
#Is_Maximissing shows if the player that just made the move wnats to maximize his/her winning chances

#Use Alpha and Beta Prunning to Optimize in order to decrease the computional complexity

function minimax(board, depth, is_maximising)
        #check if game is over(base case)
        result = check_win(board)

        #If game is over, return the score (the win code in this case, which also is the score in that case )
        if result !== nothing
                return result
        #That finishes our base case for recursion

        #if Player that just made move wants to maximize chance chances of winning, find best subcase in case of the
        end # if
end # function
