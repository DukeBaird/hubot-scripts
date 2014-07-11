# Description:
#   RT integration with hubot
#
# Dependancies:
# 	None
#
# Configuration:
# 	None
#
# Commands:
# RT <ticket number> - Sends request to PHP script to return ticket details
# rt <ticket number> - Sends request to PHP script to return ticket details
#
# Notes:
# 	For Storm Internet Services
#
# Author:
# 	Ben Craig
# 	GitHub: DukeBaird
# 	Benjamin.d.craig@gmail.com

module.exports = (robot) ->
	robot.hear /\brt #*(\d+)|^rt #*(\d+)/i, (msg) ->
		room = msg.message.room
		ticket = msg.match[1]

		msg.http('https://wispy.storm.ca/rt/hipchat.php')
			.query(room: room, ticket: ticket)
			.get() (err, res, body) ->
				console.log(body)
