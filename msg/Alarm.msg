# Alarm Notification for Level of Ionising Radiation Detection

std_msgs/Header header		# timestamp in the header is the time
				# when alarm tripped
				# frame indicates location of detector

float32 threshold		# level at which exceeded trips alarm
				# this may be dose or dose rate
				# in units specific to detector

bool triggered			# True if threshold has been exceeded
				# can be reset to False
