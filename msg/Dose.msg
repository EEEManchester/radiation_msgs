# Accummulated Dose of Ionising Radiation

std_msgs/Header header		# timestamp in the header is the time
				# immediately at the point of measurement
				# frame indicates location of detector

uint8 radiation_type		# radiation types detector is sensitive to:
				# 0 - unknown
				# 1 - Alpha particles
				# 2 - Beta particles
				# 4 - Gamma/X-ray photons
				# 8 - Neutrons
				# can be combined, e.g. alpha and beta = 3

uint8 units			# units for radiation data
				# 0 - Counts (detector events)
				# 1 - Gray (absorbed dose)
				# 2 - Sievert (equivalent dose)

float32 dose			# measurement in defined units

