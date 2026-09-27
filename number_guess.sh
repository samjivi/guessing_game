#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

IS_USERNAME_PRESENT=$($PSQL "select username from players where username='$USERNAME'")
# check if present
if [[ -z $IS_USERNAME_PRESENT ]]
then 
  INSERT_USERNAME=$($PSQL "insert into players(username) values('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else 
GAMES_PLAYED=$($PSQL "select count(*) from games full join players using (player_id) where username='$USERNAME'")
BEST_GAME=$($PSQL "select min(guesses) from games full join players using (player_id) where username='$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))
GUESS_COUNT=1
echo "Guess the secret number between 1 and 1000:"
read GUESS

while [[ $GUESS -ne $SECRET_NUMBER ]]
do
# if number not integer
if [[ ! $GUESS =~ ^[0-9]+$ ]]
then
  echo "That is not an integer, guess again:"
  read GUESS
  ((GUESS_COUNT++))
  # check if higher or lower
  else
  if [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
    read GUESS 
    ((GUESS_COUNT++))
  else 
    echo "It's higher than that, guess again:"
    read GUESS
    ((GUESS_COUNT ++))
fi
fi
done

GET_PLAYER_ID=$($PSQL "select player_id from players where username='$USERNAME'")
INSERT_GAME_SESSION=$($PSQL "insert into games(guesses, player_id) values($GUESS_COUNT, $GET_PLAYER_ID)")
echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
