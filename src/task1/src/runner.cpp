#include "ros/ros.h"
#include "geometry_msgs/Point.h"
#include <math.h> 


#define PI 3.14159265


int main(int argc, char **argv){

 ros::init(argc, argv, "runner");
 ros::NodeHandle n;
 ros::Publisher chatter_pub = n.advertise<geometry_msgs::Point>("point", 1000);
 ros::Rate loop_rate(10);
 float x = 0.0;
 while (ros::ok()){
  geometry_msgs::Point point;
  point.x = x;
  point.y = sin(x*PI/180);
  point.z = sin(x*PI/180) + cos(point.y*PI/180);
  chatter_pub.publish(point);
  ros::spinOnce();
  loop_rate.sleep();
  x+=1.0;
 }

return 0;

}
