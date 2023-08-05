cmake_minimum_required(VERSION 3.0.2)
project(rosmobile_bootstrap)

find_package(catkin REQUIRED COMPONENTS rosmobile_build_tools)

catkin_rosmobile_setup(publish installDist)

set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} /opt/ros/main)

catkin_package(CATKIN_DEPENDS rosmobile_build_tools)

install(
  DIRECTORY ${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_MAVEN_DESTINATION}/com/github/rosmobile_bootstrap/
  DESTINATION ${CATKIN_GLOBAL_MAVEN_DESTINATION}/com/github/rosmobile_bootstrap
)
