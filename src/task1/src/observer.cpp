#include "ros/ros.h"
#include "geometry_msgs/Point.h"

void chatterCallback(const geometry_msgs::Point::ConstPtr& point){
 ROS_INFO("The coordinates are: x = [%f], y = [%f], z = [%f]", point->x, point->y, point->z);
}

int main(int argc, char **argv){
 ros::init(argc, argv, "observer");
 ros::NodeHandle n;
 ros::Subscriber sub = n.subscribe("point", 1000, chatterCallback);
 ros::spin();

 return 0;

}
