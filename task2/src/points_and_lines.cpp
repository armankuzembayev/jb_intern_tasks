#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <iostream>

#include <cmath>

float calculate_error(const float& y){
    
    float error = (2*(float) rand() / RAND_MAX - 1) * y * 0.05;
    return error;
}

int main( int argc, char** argv )
{
  ros::init(argc, argv, "points_and_lines");
  ros::NodeHandle n;
  ros::Publisher marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 10);

  ros::Rate loop_rate(5);
  unsigned int t = static_cast<unsigned int>(ros::Time::now().toSec());
  srand(t);

  while (ros::ok())
  {

    visualization_msgs::Marker points, line_strip, line_list;
    points.header.frame_id = line_strip.header.frame_id = line_list.header.frame_id = "/my_frame";
    points.header.stamp = line_strip.header.stamp = line_list.header.stamp = ros::Time::now();
    points.ns = line_strip.ns = line_list.ns = "points_and_lines";
    points.action = line_strip.action = line_list.action = visualization_msgs::Marker::ADD;
    points.pose.orientation.w = line_strip.pose.orientation.w = line_list.pose.orientation.w = 1.0;



    line_strip.id = 0;
    line_strip.type = visualization_msgs::Marker::LINE_STRIP;
    line_strip.scale.x = 0.05;


    // Line strip is blue
    line_strip.color.b = 1.0;
    line_strip.color.a = 1.0;



//x^2 + y^2 = 5
//y = sqrt(5 - x^2)
    float error = 0.0;
    float i = -3.0;
    while (i <= 3){
      float rounded = std::floor((pow(i, 2) * 100) + .5) / 100;
      float y = sqrt(9 - rounded);
      float error = calculate_error(y);
      geometry_msgs::Point p;
      p.x = i;
      p.y = y + error;
      p.z = 0;
      line_strip.points.push_back(p);
      i += 0.05;
      ROS_INFO("The coordinates are: x = [%f], y = [%f]", p.x, p.y);
    }
      
    i = 3.0;
    while (i >= -3){
      float rounded = std::floor((pow(i, 2) * 100) + .5) / 100;
      float y = sqrt(9 - rounded) * (-1);
      float error = calculate_error(y);
      geometry_msgs::Point p;
      p.x = i;
      p.y = y + error;
      p.z = 0;

      line_strip.points.push_back(p);
      i -= 0.05;
      ROS_INFO("The coordinates are: x = [%f], y = [%f]", p.x, p.y);
    }


    marker_pub.publish(line_strip);
    loop_rate.sleep();

  }

 return 0;
}
