# Dose Rate of Ionising Radiation

Header header			# timestamp in the header is the time
				# immediately after the integration window
				# has closed
				# frame indicates location of detector

uint8 radiation_type		# radiation types detector is sensitive to:
				# 0 - unknown
				# 1 - Alpha particles
				# 2 - Beta particles
				# 4 - Gamma/X-ray photons
				# 8 - Neutrons
				# can be combined, e.g. alpha and beta = 3

uint8 units			# units for radiation data
				# 0 - Counts per second (detector events)
				# 1 - Gray per hour (absorbed dose)
				# 2 - Sievert per hour (equivalent dose)
				# 3 - Becquerel [per second] (activity)
				# note not all time bases are the same

float32 integration_time	# integration time used for rate [seconds]

float32 rate			# measurement in defined units

