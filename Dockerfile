FROM ros:humble-ros-base-jammy

# Change the default shell to Bash
SHELL [ "/bin/bash" , "-c" ]

# Useful tools
RUN apt update \
  && apt-get install -y -qq --no-install-recommends \
    byobu \
    ros-humble-rosbag2-storage-mcap \
    ros-humble-rosbridge-suite \
    ros-humble-rosbridge-msgs \
  && rm -rf /var/lib/apt/lists/*

RUN echo 'source /opt/ros/humble/setup.bash' >> ~/.bashrc
RUN echo 'alias ..="cd .."'>> ~/.bashrc
RUN echo "export PS1='\[\e[1;31;40m\]BAG-PLAYER\[\e[0m\] \u:\w\$ '">> ~/.bashrc


RUN echo "" && echo "  USAGE:" \
    && echo "    ros2 launch rosbridge_server rosbridge_websocket_launch.xml" \
    && echo ""