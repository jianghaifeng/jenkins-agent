FROM openshift/jenkins-agent-maven-35-centos7:v3.11
USER root

ENV PATH=$PATH:/opt/gradle/bin

RUN curl -LOk https://services.gradle.org/distributions/gradle-6.0-bin.zip && \
    unzip -q gradle-6.0-bin.zip -d /opt && \
    rm -f gradle-6.0-bin.zip && \
    ln -s /opt/gradle-6.0 /opt/gradle

USER 1001

