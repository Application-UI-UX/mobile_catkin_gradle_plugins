cmake_minimum_required(VERSION 3.0.2)
project(mobile_catkin_gradle_plugins)

# Find ROS
if($ENV{ROS_VERSION} EQUAL 1)
find_package(
  catkin REQUIRED COMPONENTS 
  mobile_catkin_modules_build_development_tools
  )
else()
  find_package(ament_cmake REQUIRED)
endif()


catkin_rosmobile_setup(publish installDist)

set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} /opt/ros/main)

if($ENV{ROS_VERSION} EQUAL 1)
  catkin_package(
    CATKIN_DEPENDS 
    mobile_catkin_modules_build_development_tools
    )
endif()

install(
  DIRECTORY ${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_MAVEN_DESTINATION}/com/github/mobile_catkin_gradle_plugins/
  DESTINATION ${CATKIN_GLOBAL_MAVEN_DESTINATION}/com/github/mobile_catkin_gradle_plugins
)
