FROM jenkins/jenkins

USER root

# Install cURL
RUN  apt-get install -y curl

# Install nodejs and npm
# RUN curl -sL https://deb.nodesource.com/setup_9.x | bash - \
#   && apt-get install -y nodejs \
#   && curl -L https://www.npmjs.com/install.sh | sh

# Install docker client
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

# Copy ssh file
# COPY aws-master-key.pem /var/jenkins_home/.ssh/

# Disable admin setup
# ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

# automatically install all plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
