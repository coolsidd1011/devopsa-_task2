FROM centos:latest

RUN yum install wget -y

RUN yum install net-tools -y

RUN yum install sudo -y

RUN yum install java-11-openjdk.x86_64 -y

RUN sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo


RUN sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

RUN yum install git -y

RUN yum install jenkins -y

RUN echo -e "jenkins ALL=(ALL)  NOPASSWD:ALL" >> /etc/sudoers

RUN yum install python -y

CMD ["java","-jar","/usr/lib/jenkins/jenkins.war"]
EXPOSE 8080

