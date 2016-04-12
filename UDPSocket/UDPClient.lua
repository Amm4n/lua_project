#!/usr/bin/env lua5.1

local socket = require("socket");

udp = socket.udp()
udp:setpeername("127.0.0.1", 53474)
udp:settimeout()

	udp:send("Data!")
	data = udp:receive()

	if data then
		print("Received: ", data)
	end

