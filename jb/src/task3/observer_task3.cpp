#include "ros/ros.h"
#include "geometry_msgs/Point.h"
#include "geometry_msgs/PoseStamped.h"
#include "nav_msgs/Path.h"
#include <visualization_msgs/Marker.h>

// Using Simple Moving average for smoothing the path

class Observer{
public:
  Observer();
private:
  void chatterCallback(const nav_msgs::Path::ConstPtr& path); 
  ros::NodeHandle n_;
  ros::Publisher path_pub;
  ros::Subscriber sub_; 
  std::vector<geometry_msgs::Point> v; // vector that stores the sum of each point of the trajectory
  std::vector<geometry_msgs::Point> vOut; // vector of smoothed points of the trajectory
  int counter; // counts the number of received messages
}; // End of Class

Observer::Observer() : counter(1){
    sub_ = n_.subscribe("path", 100, &Observer::chatterCallback, this);
    path_pub = n_.advertise<visualization_msgs::Marker>("visualization_marker", 10);	
}

void Observer::chatterCallback(const nav_msgs::Path::ConstPtr& path){
    visualization_msgs::Marker points, line_strip;
    points.header.frame_id = line_strip.header.frame_id = "/my_frame";
    points.header.stamp = line_strip.header.stamp = ros::Time::now();
    points.ns = line_strip.ns = "observer";
    points.action = line_strip.action = visualization_msgs::Marker::ADD;
    points.pose.orientation.w = line_strip.pose.orientation.w = 1.0;

    line_strip.id = 0;
    line_strip.type = visualization_msgs::Marker::LINE_STRIP;
    line_strip.scale.x = 0.02;

    // Line color is red
    line_strip.color.r = 1.0;
    line_strip.color.a = 1.0;

    unsigned int len = path->poses.size();
    if(v.empty()){
	for(unsigned int i=0; i<len; ++i){
	    v.push_back(path->poses[i].pose.position);
	}
	vOut = v;
    }
    else{
	for(unsigned int i=0; i<len; ++i){
	    v[i].y += path->poses[i].pose.position.y;
	    vOut[i].y = v[i].y / counter;	
	}

    }	
    line_strip.points = vOut;	  	
    path_pub.publish(line_strip);
    counter++;
  }

int main(int argc, char **argv){
  ros::init(argc, argv, "observer_task3");
  Observer observer;
  ros::spin();

 return 0;

}
