FROM osrf/ros:noetic-desktop

RUN apt-get update
RUN apt-get install -y git && apt-get install -y python3-pip

RUN source /opt/ros/noetic/setup.bash
RUN mkdir -p ~/tdk_ws/src
RUN catkin_make

RUN echo "ALL DONE !"