FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift
USER root

ENV PATH=$PATH:/opt/gradle/bin

RUN curl -LOk https://services.gradle.org/distributions/gradle-6.0-bin.zip && \
    unzip -q gradle-6.0-bin.zip -d /opt && \
    rm -f gradle-6.0-bin.zip && \
    ln -s /opt/gradle-6.0 /opt/gradle

USER 1001

