FROM node:14

# AWS CLI needs the PYTHONIOENCODING environment variable to handle UTF-8 correctly:
ENV PYTHONIOENCODING=UTF-8

# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install

## Install Serverless
WORKDIR /app
RUN npm -g install serverless@2.25.2

RUN apt-get update && apt-get install -y locales locales-all
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
