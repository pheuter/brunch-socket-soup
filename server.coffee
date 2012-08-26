express     = require('express')
app         = express()
port        = process.env.PORT or 3000
server      = app.listen port
io          = require('socket.io').listen server

app.configure ->
  app.use express.bodyParser()
  app.use express.static(__dirname + "/public")

io.configure ->
  io.set 'transports', ['xhr-polling'] # Nginx websocket support workaround
  io.set 'log level', 1

io.sockets.on "connection", (socket) ->
  console.log(socket.id+" connected!!!")