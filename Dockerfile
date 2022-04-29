FROM oceanperception/smarty200_ros:cola2
SHELL ["/bin/bash", "-c"]
#Remove old /opt/ros/cola2_ws/src/cola2_stonefish
RUN rm -rf /opt/ros/cola2_ws/src/cola2_stonefish
RUN mkdir -p /opt/ros/cola2_ws/src/cola2_stonefish
COPY . /opt/ros/cola2_ws/src/cola2_stonefish
RUN cd /opt/ros/cola2_ws/src/cola2_stonefish && \
    catkin build --this
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["/bin/bash"]
