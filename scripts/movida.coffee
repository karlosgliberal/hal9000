# Description:
#   Display a "touche" image
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   touche - display a "touche" gif
#
# Author:
#   nobody

movida = [
  "http://neonized.net/blog/wp-content/files/2012/03/serie_touche-26.jpg",
  "http://irishrailwaymodeller.com/attachment.php?s=68cfe3c52c2d19541e0dc9c0f5ffc579&attachmentid=4040&d=1353501196",
  "http://img.timeinc.net/time/today_in_pictures/0910/tip_ny_1008_01.jpg",
  "http://img.desmotivaciones.es/201104/touche.jpg",
  "http://fc08.deviantart.net/fs71/i/2010/123/b/9/Touche_by_Culpeo_Fox.jpg",
  "http://www.modern-talking.net/files/images/touche_0.jpg",
  "http://media.lolwall.co/c/2013/04/touche-art-print-by-t-sir_263747-250x.jpeg",
  "http://b.vimeocdn.com/ts/349/130/349130334_640.jpg",
  "http://www.touchehombre.com.au/themes/touchehombre/images/th/logo.png",
  "http://themidnightalliance.files.wordpress.com/2012/04/touchc3a9.gif",
  "http://media.giphy.com/media/6KAxgfdBLzzqM/giphy.gif",
  "http://29.media.tumblr.com/tumblr_m17y05jbVU1r4aa4yo1_r1_500.gif",
  "http://media.tumblr.com/tumblr_m1mpn8hI1v1qilqg8.gif",
  "http://ct.fra.bz/ol/fz/sw/i59/5/6/22/frabz-Touche-Good-Sir-e86ec6.jpg",
  "http://25.media.tumblr.com/tumblr_ma5kj0aWDp1rxv5j8o1_500.gif",
  "http://i.imgur.com/Gn2T3.gif",
  "http://i.imgur.com/VvN3o.gif",
  "http://i.imgur.com/sdyARpO.gif"
]

module.exports = (robot) ->
  robot.hear /movida/i, (msg)->
    msg.send msg.random movida