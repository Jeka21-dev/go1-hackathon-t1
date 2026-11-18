# syntax=docker/dockerfile:1
FROM --platform=linux/amd64 ros:humble-ros-base-jammy

RUN apt-get update && apt-get install -y --no-install-recommends \
        ros-humble-rmw-cyclonedds-cpp \
        ros-humble-cyclonedds \
    && rm -rf /var/lib/apt/lists/*

ENV RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

RUN useradd -m -u 1000 participant

RUN mkdir -p /opt/solution
COPY --chown=participant:participant ping.py /opt/solution/ping.py
COPY --chown=participant:participant entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER participant
WORKDIR /home/participant

ENTRYPOINT ["/entrypoint.sh"]
