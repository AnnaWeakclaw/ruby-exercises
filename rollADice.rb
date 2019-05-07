#Roll a 6sided dice
diceSay = rand(6) +1
myWins = 0
yourWins = 0
myTurn = 0
yourTurn = 0


until myWins == 2 || yourWins == 2 do
  myTurn = rand(6) +1 + rand(6) +1
  yourTurn = rand(6) +1 + rand(6) +1
  if myTurn > yourTurn
    puts "I win"
    myWins += 1
  else puts "I lose :("
    yourWins += 1
  end
end

if myWins == 2
  puts "MeMeMeMeMeMe Won the Game"
else
  puts "YOU!!! Won the Game"
end
