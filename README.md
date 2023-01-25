# radiation_msgs Package

# Overview
This package offers standardised ROS message structures to communicate radiation information between nodes, primarily from detectors directly.  Detectors covers a broad range of instruments from personal dosimeters to spectrometers, all used as part of nuclear inspection tasks.

For ROS2 distributions, please see the ["ros2" branch](https://github.com/EEEManchester/radiation_msgs/tree/ros2).

Messages can explicitly communicate radiation type (alpha, beta, gamma, neutron), along with key metrics that the majority of devices provide.

This package (currently) provides message structures for:
- Accummulated Dose
- Dose Rate
- Alarms
- Spectral Data

##### Accummulated Dose (Dose.msg)
Total absorbed dose over a given time.  This could represent a mission dose, or lifetime dose of a robot or component (much like the trip distance indicator in a car).

##### Dose Rate (DoseRate.msg)
Intensity of radiation within a window.  This is typically used as an indicator of how active an area is, and used to predict the accummulated dose into the future.

##### Alarms (Alarm.msg)
Damage to materials, electronics, and human biology may be an important criteria during a mission.  Alarms can indicate if a threshold has been met, either for acummulated dose or dose rate.

##### Spectral Data (Spectral.msg)
Spectrometers offer energy resolved indication of activity.  Specific isotopes will emit specific energies of radiation, which can be used to infer what materials are present.  For example, Cs-137 is an common isotope to investigate, with gamma-ray emission energy around 660 keV.

# Installation
To build from this repo, clone the latest version from this repository into your catkin workspace and compile using:

```
cd catkin_ws/src
git clone https://github.com/EEEManchester/radiation_msgs.git
cd ..
catkin_make
```

This package currently has no dependancies on other packages, besides the stock ROS std_msgs package.

# More Information

These message structures were a result of community consulation and collaboration, with the [original workshop found here](https://youtu.be/rdy53jwjKZA), a document ([ROS Messages for Nuclear Sensing](https://www.ans.org/pubs/proceedings/article-50813/)) outlining the choices and eventual rationale.  An open access copy of the document can be [found here](https://www.research.manchester.ac.uk/portal/files/223331152/ROS_Messages_for_Nuclear_Sensing.pdf).

## Bugs & Feature Requests
Please report bugs and request features using the [Issue Tracker](https://github.com/EEEManchester/radiation_msgs/issues).
