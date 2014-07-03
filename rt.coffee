# Description:
# RT integration with hubot
#
# Dependancies:
# None
#
# Configuration:
# None
#
# Commands:
#   hubot RT <ticket number> - Sends request to PHP script to return ticket details
#
# Notes:
# For Storm Internet Services
#
# Author:
# Ben Craig
# GitHub: DukeBaird
# Benjamin.d.craig@gmail.com

module.exports = (robot) ->

	robot.hear /RT (\d+)/i, (msg) ->
		room = msg.message.room
		ticket = msg.match[1]

		msg.send "test" + room + ticket

		$.ajax 'wispy.storm.ca/rt/hipchat.php',
			  data :
			    room : room
			    ticket : ticket
