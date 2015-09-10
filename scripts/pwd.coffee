# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

{exec} = require 'child_process'
module.exports = (robot) ->

  robot.respond /pwd/i, (msg) ->
    command = "pwd"

    msg.send "¿Y para que quieres saber donde esta mi casa? ¿eh?."

    exec command, (error, stdout, stderr) ->
      msg.send error if error
      msg.send stdout if stdout
      msg.send stderr if stderr
