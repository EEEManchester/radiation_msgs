cmake_minimum_required(VERSION 3.0.2)
project(radiation_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  std_msgs
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_message_files(
  DIRECTORY msg
  FILES
  Dose.msg
  DoseRate.msg
  Alarm.msg
  Spectral.msg
)

generate_messages(
  DEPENDENCIES std_msgs
)

catkin_package(
  # INCLUDE_DIRS
  CATKIN_DEPENDS message_runtime std_msgs
)


