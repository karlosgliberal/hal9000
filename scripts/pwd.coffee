# Description:
#   Te dice donde vive
#
# Commands:
#   pdw - Donde vive

{exec} = require 'child_process'
module.exports = (robot) ->

  robot.respond /pwd/i, (msg) ->
    command = "pwd"

    msg.send "¿Y para que quieres saber donde esta mi casa? ¿eh?."

    exec command, (error, stdout, stderr) ->
      msg.send error if error
      msg.send stdout if stdout
      msg.send stderr if stderr
