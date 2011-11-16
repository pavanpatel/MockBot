echo Starting ROS MockBot
export distro=electric
source /opt/ros/$distro/setup.sh
source /opt/ros/$distro/ros/tools/rosbash/rosbash

export ROS_PACKAGE_PATH=/home/ros/prog/ros:$ROS_PACKAGE_PATH:.
export LUA_PATH="$HOME/prog/ros/roslua/src/?/init.lua;"\
"$HOME/prog/ros/roslua/src/?.lua;"\
"/usr/share/lua/5.1/?/init.lua;/usr/share/lua/5.1/?.lua" export
export EDITOR=vi
export GSCAM_CONFIG="v4l2src device=/dev/video0 ! video/x-raw-rgb,width=320,height=240,framerate=(fraction)30/1 ! ffmpegcolorspace"

roslaunch MockBot MockBot.launch
