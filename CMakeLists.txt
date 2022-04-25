cmake_minimum_required(VERSION 3.0.2)
project(rosjava_bootstrap)

find_package(catkin REQUIRED rosjava_build_tools)

catkin_rosjava_setup(publish installDist)

catkin_package()

install(
  DIRECTORY ${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_MAVEN_DESTINATION}/org/ros/rosjava_bootstrap/
  DESTINATION ${CATKIN_GLOBAL_MAVEN_DESTINATION}/org/ros/rosjava_bootstrap
)
