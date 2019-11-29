FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift
USER root

ENV PATH=$PATH:/opt/gradle/bin

# Install Gradle and Istio, Add Certificate of Email Notification Gateway
ADD dependency-check-5.2.4-release.zip .
RUN curl -LOk https://services.gradle.org/distributions/gradle-6.0-bin.zip
    unzip -q gradle-6.0-bin.zip -d /opt && \
    rm -f gradle-6.0-bin.zip && \
    ln -s /opt/gradle-6.0 /opt/gradle

USER 1001

