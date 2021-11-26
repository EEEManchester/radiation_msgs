# Spectral Data From Energy Resolved Detectors

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

float32 integration_time	# integration time [seconds]

uint8 averages			# number of integrations used for averaging
				# 0 or 1 assumes a single integration capture

uint8 type			# values communicated by spectrum
				# 0 - raw
				# 1 - background corrected
				# 2 - background spectrum

uint8 intensity_units		# units for collected radiation data
				# 0 - Counts (detector events)
				# will almost certainly be counts per channel

string bin_units		# units for how data is resolved
				# e.g. "Energy keV"
				# if blank, assume integer channel numbers

float32[] values		# values from spectrum as 1D array

float32[] breaks		# optional - n+1 for bin start and end values
				# bin centres are taken as the midpoint of breaks
				# if blank, integer channel numbers are used
