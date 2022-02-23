# rock_paper_scissors

Rock_Paper_Scissors is Backend_Recruiting_test for the compagny Skeepers.
For this exercice, I use Ruby 

## Mission

Make an API to play Rock - Paper - Scissors.

## Usage
```bash
ruby rock_paper_scissors.rb
```

```bash
"What's your name ?"
> Ponky
"Please choose your hand (rock, paper, scissors)"
> rock
"The computer chose scissors, great Ponky you win!"
```
The program writes the result directly to the rock_paper_scissors.json file like this:
(if the rock_paper_scissors.json file doesn't exist, the rock_paper_scissors.rb file will generate it automatically) 
```json
{
  "moves": [
    {
      "name": "Ponky",
      "move": "rock"
    },
    {
      "name": "bot",
      "move": "scissors"
    }
  ],
  "result": {
    "tie": false,
    "winner": "Ponky"
  }
}
```
