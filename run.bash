docker build -t humble_bag_player . 

docker run -it \
    -v="/home/jed/longops/kinect:/kinect" \
    humble_bag_player \
    bash

# -v /dev/shm:/dev/shm \ # to solve issue of seeing topics out of docker https://answers.ros.org/question/370595/ros2-foxy-nodes-cant-communicate-through-docker-container-border/