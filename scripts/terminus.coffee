# Description:
#   controlar los comandos de terminus y de drus
#
# Commands:
#   cc all <nombre_sitio> <entorno> - borra el cache de un sitio de panteon y su entorno


{exec} = require 'child_process'
module.exports = (robot) ->

#Borrando caches
  robot.respond /cc all (.+)\s(.*)/i, (msg) ->
    hostname = msg.match[1]
    env = msg.match[2]
    msg.send "Borrando el cache de #{hostname}..."

    if env.length = 0
      command = "terminus --site=#{hostname} drush cc all"

    command = "terminus --site=#{hostname} drush cc all --env=#{env}"
    msg.send "Este es el comando #{command}."

    exec command, (error, stdout, stderr) ->
      msg.send error if error
      msg.send "https://media.giphy.com/media/8WIJHInfWP6/giphy.gif" if stdout
      msg.send stderr if stderr

#Borrando caches
  robot.respond /deploy2test (.+)\s(.*)/i, (msg) ->
    hostname = msg.match[1]
    nota = msg.match[2]
    msg.send "Deploy a test en #{hostname}..."

    command = "terminus site deploy --site=#{hostname} --env=test --cc --note='Esto es cosa de hal-ito'"
    msg.send "Este es el comando #{command}."

    exec command, (error, stdout, stderr) ->
      msg.send error if error
      msg.send "https://media.giphy.com/media/8WIJHInfWP6/giphy.gif" if stdout
      msg.send stderr if stderr

#Borrando caches
  robot.respond /deploy2live (.+)\s(.*)/i, (msg) ->
    hostname = msg.match[1]
    nota = msg.match[2]
    msg.send "Deploy a live en #{hostname}..."

    command = "terminus site deploy --site=#{hostname} --env=live --cc --note='Esto es cosa de hal-ito'"
    msg.send "Este es el comando #{command}."

    exec command, (error, stdout, stderr) ->
      msg.send error if error
      msg.send "https://media.giphy.com/media/8WIJHInfWP6/giphy.gif" if stdout
      msg.send stderr if stderr


