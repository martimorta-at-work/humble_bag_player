FROM osrf/ros:humble-base

# Change the default shell to Bash
SHELL [ "/bin/bash" , "-c" ]

# Useful tools
RUN apt update \
  && apt-get install -y -qq --no-install-recommends \
    byobu \
    ros-foxy-rosbag2-storage-mcap \
  && rm -rf /var/lib/apt/lists/*

RUN echo 'source /opt/ros/foxy/setup.bash' >> ~/.bashrc
RUN echo 'alias ..="cd .."'>> ~/.bashrc
RUN echo "export PS1='\[\e[1;31;40m\]BAG-PLAYER\[\e[0m\] \u:\w\$ '">> ~/.bashrc

