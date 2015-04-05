# Description:
#   Post replays generated by Deja Vu in chat
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot will post replays from the game as gyfcat links
#
# Author:
#   Camtendo

module.exports = (robot) ->
  robot.router.get '/hubot/replay/:url', (req, res) ->
  url = req.params.url
  #Hardcoded for now until I understand the data structure more
  robot.messageRoom '#camtendo', "I have a replay to show you guys! #{url}"
  res.end
