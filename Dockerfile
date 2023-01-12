ARG DOCKER_VERSION
ARG JAVA_TAG
ARG SBT_VERSION
ARG SCALA_VERSION

MAINTAINER Hossein Naderi <hossein-naderi@hotmail.com>

FROM docker:${DOCKER_VERSION} AS docker

FROM sbtscala/scala-sbt:${JAVA_TAG}_${SBT_VERSION}_${SCALA_VERSION}
COPY --from=docker /usr/local/bin/docker /usr/local/bin/
