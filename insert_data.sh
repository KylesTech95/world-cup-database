#!/bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
# refresh db to prevent unnecessary coppies of data
echo $($PSQL "TRUNCATE games,teams")

#cat (retrieve data from)
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WIN_GOALS OP_GOALS
do
  if [[ $YEAR != "year" ]]
    then
  WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER'")
  OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")
    if [[ -z $WINNER_ID ]]
      then
        INSERT_WINNER=$($PSQL "insert into teams(name) values('$WINNER')")
      if [[ $INSERT_WINNER == "INSERT 0 1" ]]
        then
          echo Inserted into teams, $WINNER
      fi # [[ $INSERT_WINNER == "INSERT 0 1" ]]
    fi # [[ -z $WINNER_ID ]]
    #_______________________________________________________________
    if [[ -z $OPPONENT_ID ]]
      then
        INSERT_OPPONENT=$($PSQL "insert into teams(name) values('$OPPONENT')")
      if [[ $INSERT_OPPONENT == "INSERT 0 1" ]]
        then
          echo Inserted into teams, $OPPONENT
      fi # [[ $INSERT_OPPONENT == "INSERT 0 1" ]]
    fi # [[ -z $OPPONENT_ID ]]

#________________________________________________________________
  # get new teams_id
  WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER'")
  OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")

#insert games
INSERT_GAMES=$($PSQL "insert into games(year,opponent_id,winner_id,round,winner_goals,opponent_goals) values($YEAR,$OPPONENT_ID,$WINNER_ID,'$ROUND',$WIN_GOALS,$OP_GOALS)")
if [[ $INSERT_GAMES == "INSERT 0 1" ]]
    then
      echo Inserted into games, $OP_GOALS
    fi

    fi
done
  
