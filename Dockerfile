FROM quay.io/podman/stable:v4.3

RUN yum update -y && \
    yum install -y unzip && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.4.27.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    bash ./aws/install && \
    rm awscliv2.zip && \
    yum clean all
