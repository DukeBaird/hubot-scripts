# Description:
#   Stop... Hammertime
#
# Dependancies:
# 	None
#
# Configuration:
# 	None
#
# Commands:
# 
#
# Notes:
# 	Copied idea from StackOverdlow JavaScript chatroom bot
#
# Author:
# 	Ben Craig
# 	GitHub: DukeBaird
# 	Benjamin.d.craig@gmail.com

module.exports = (robot) ->
	robot.hear /stop/i, (msg) ->	
		msg.send "HAMMERTIME"

	robot.hear /stahp/i, (msg) ->
		msg.send "HAMMAHTIME"