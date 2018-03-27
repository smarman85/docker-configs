FROM jenkins:1.609.1
USER root
RUN mkdir /var/log/jenkins
RUN chown -R  jenkins:jenkins /var/log/jenkins
USER jenkins
MAINTAINER smarman
ENV JAVA_OPTS="-Xmx8192m"
ENV JENKINS_OPTS="--handlerCountStartup=100 --handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log"
#VOLUME ["/var/log/jenkins:/vagrant/jenkins-docker/log"]
