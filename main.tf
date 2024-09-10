PIPELINE:
STEP BY STEP EXECUTION OF A PARTICULAR PROCESS.
SERIES OF EVENTS INTERLINKED WITH EACHOTHER.

CODE -- > BUILD -- > TEST -- >  DEPLOY

ENV:
DEV	: DEVELOPERS
QA	: TESTERS
UAT	: CLIENT

THE ABOVE ENVS ARE CALLED AS PRE-PROD OR NON-PROD

PROD	: USER
PROD ENV IS ALSO CALLED AS LIVE ENV


JENKINS:
its a free and opensource tool.
its platform independent.
it is built on java-11.
koshuke kawaguchui invented jenkins in sun micro systems 2004.
inital name was hudson -- > paid -- > orcle -- > free 
it consist lot of plugins.
port number for jenkins is 8080.

SETUP: CREATE EC2 WITH ALL TRAFFIC (8080)

#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN 
yum install git java-1.8.0-openjdk maven -y

#STEP-2: GETTING THE REPO (jenkins.io --> download -- > redhat)
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#STEP-3: DOWNLOAD JAVA11 AND JENKINS
amazon-linux-extras install java-openjdk11 -y
yum install jenkins -y
update-alternatives --config java

#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl start jenkins.service
systemctl status jenkins.service
