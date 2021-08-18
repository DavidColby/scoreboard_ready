# README

The code in this project accompanies the CableReady tutorial originally published [here](https://www.colby.so/posts/building-a-real-time-scoreboard-with-rails-and-cableready).

This application is a real-time scoreboard, built using Ruby on Rails, CableReady, and Stimulus. To try it out locally, clone this repo to your machine and then:

```
bundle install
rails db:create db:migrate
rails s
```

You'll also need Redis installed and running in your development environment.

Once it is booted up, head to localhost:3000/games, create a game, and then head to the show page. Updates made to the game you're viewing will be broadcast via a WebSocket connection - try it out by updating either score on a game from the Rails console while viewing that game in your browser.

