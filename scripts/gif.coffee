# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md


giphy =
  api_key: 'dc6zaTOxFJmzC'
  base_url: 'http://api.giphy.com/v1'

{exec} = require 'child_process'
module.exports = (robot) ->
  robot.hear /hola/i, (res) ->
    res.send "Me gusta que me saluden, pero no te pases"

  robot.respond /(gif )? (.*)/i, (msg) ->
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