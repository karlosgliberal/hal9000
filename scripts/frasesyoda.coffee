# Description:
#   Frases de yoda
#
# Commands:
#   yoda frase - Te devuelve una frase de yoda

module.exports = (robot) ->
  robot.hear /^yoda frase$/i, (msg) ->
    frases = ["El miedo es el camino hacia el Lado Oscuro, el miedo lleva a la ira, la ira lleva al odio, el odio lleva al sufrimiento. Veo mucho miedo en ti.",
    "Vive el momento, no pienses; siente, utiliza tu instinto, siente La Fuerza",
    "Caminos a la victoria hay, distintos que aplastar a un enemigo",
    "El tamaño no importa. Mírame a mí. Me juzgas por mi tamaño, ¿eh? Y no deberías, porque mi aliada es la fuerza, y una poderosa aliada es La vida la crea, la hace crecer, nos penetra y nos rodea ¡Seres luminosos somos! ¡No esta cruda materia!",
    "La muerte una parte natural de la vida es. Regocíjate por los que te rodean que en la Fuerza se transforman. Llorarlos no debes. Añorarlos tampoco. El apego a los celos conduce. La negra sombra de la codicia es.Siempre en movimiento está el futuro.",
    "Ten muy presente que tu efoque determina tu realidad.",
    "La guerra no lo hace a uno más grandioso",
    "Siempre ha de haber dos, ni más ni menos. Un maestro, y un aprendiz.",
    "No lo intentes. Hazlo, o no lo hagas, pero no lo intentes."]
    frase = msg.random frases
    msg.send "\"#{frase}\" - Yoda"