cmake_minimum_required(VERSION 3.0.2)
project(rosmobile_bootstrap)

find_package(catkin REQUIRED rosmobile_build_tools)

catkin_rosmobile_setup(publish installDist)

catkin_package(CATKIN_DEPENDS rosmobile_build_tools)

install(
  DIRECTORY ${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_MAVEN_DESTINATION}/com/github/rosmobile_bootstrap/
  DESTINATION ${CATKIN_GLOBAL_MAVEN_DESTINATION}/com/github/rosmobile_bootstrap
)
