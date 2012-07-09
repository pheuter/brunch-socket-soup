express   = require("express")
app       = express.createServer()
io        = require("socket.io").listen(app)

app.configure ->
  app.use express.static(__dirname + "/public")

io.configure ->
  io.set 'transports', ['xhr-polling']
  io.set 'log level', 1

io.sockets.on "connection", (socket) ->
  console.log(socket.id+" connected!!!")

port = process.env.PORT or 3000
app.listen port