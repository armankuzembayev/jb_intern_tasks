#include "ros/ros.h"
#include "geometry_msgs/Point.h"
#include <visualization_msgs/Marker.h>

class Observer{
public:
  Observer();

private:
  void chatterCallback(const geometry_msgs::Point& point); // callback function
  ros::NodeHandle n_;
  ros::Publisher path_pub;
  ros::Subscriber sub_; 
  std::vector<geometry_msgs::Point> v;
}; // End of Class

Observer::Observer(){
  sub_ = n_.subscribe("point", 10, &Observer::chatterCallback, this);
  path_pub = n_.advertise<visualization_msgs::Marker>("visualization_marker", 10);
}

void Observer::chatterCallback(const geometry_msgs::Point& point){
  // Initialization
  visualization_msgs::Marker points, line_strip, line_list;
  points.header.frame_id = line_strip.header.frame_id = line_list.header.frame_id = "/my_frame";
  points.header.stamp = line_strip.header.stamp = line_list.header.stamp = ros::Time::now();
  points.ns = line_strip.ns = line_list.ns = "observer";
  points.action = line_strip.action = line_list.action = visualization_msgs::Marker::ADD;
  points.pose.orientation.w = line_strip.pose.orientation.w = line_list.pose.orientation.w = 1.0;

  line_strip.id = 0;
  line_strip.type = visualization_msgs::Marker::LINE_STRIP;
  line_strip.scale.x = 0.05;

  // Line color is red
  line_strip.color.r = 1.0;
  line_strip.color.a = 1.0;

  // Publishing marker
  v.push_back(point);
  line_strip.points = v;	  	
  path_pub.publish(line_strip);
}


int main(int argc, char **argv){
  ros::init(argc, argv, "observer_task2");
  Observer observer;
  ros::spin();

 return 0;

}
