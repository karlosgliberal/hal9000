# Description:
#   Gif animados
#
# Commands:
#   gif <nombre> - Te devuelve un gif


giphy =
  api_key: 'dc6zaTOxFJmzC'
  base_url: 'http://api.giphy.com/v1'

{exec} = require 'child_process'
module.exports = (robot) ->
  robot.hear /hola/i, (res) ->
    res.send "Me gusta que me saluden, pero no te pases"

  robot.respond /(dame )(gif|giphy)? (.*)/i, (msg) ->
    giphyMe msg, msg.match[3], (url) ->
      msg.send url

  giphyMe = (msg, query, cb) ->
    endpoint = '/gifs/search'
    url = "#{giphy.base_url}#{endpoint}"

    msg.http(url)
      .query
        q: query
        api_key: giphy.api_key
      .get() (err, res, body) ->
        response = undefined
        try
          response = JSON.parse(body)
          images = response.data
          if images.length > 0
            image = msg.random images
            cb image.images.original.url

        catch e
          response = undefined
          cb 'Error'

        return if response is undefined