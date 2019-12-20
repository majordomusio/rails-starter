#FROM docker.io/majordomusio/rails-container:5.2
FROM docker-registry.default.svc:5000/base/rails-image:5.2

# Default user ID
ENV USER_ID 1001

# Image metadata
ENV NAME="RAILS6 starter app" \
    SUMMARY="RAILS6 starter app"	\
    DESCRIPTION="RAILS6 starter app" \
    MAINTAINER="ratchet.cc <hello@ratchet.cc>" \
    VENDOR="ratchet.cc" \
    TAGS=",RAILS"

LABEL name="$NAME" \
      maintainer="$MAINTAINER" \
      author="$MAINTAINER" \
      vendor="$VENDOR" \
      summary="$SUMMARY" \
      description="$DESCRIPTION" \
      io.k8s.description="DESCRIPTION" \
      io.k8s.display-name="$NAME" \
      io.openshift.tags="$TAGS"

# Runtime settings
EXPOSE 8080
WORKDIR ${APP_ROOT}/src

# Copy configuration files etc. to the image. 
COPY ./deployments/root/ /

# Copy the app to the image
COPY ./ /opt/app/src

# Assemble all things RAILS etc
RUN assemble-app

# - In order to drop the root user, we have to make some directories world
#   writable as OpenShift default security model is to run the container
#   under random UID.
RUN chown -R ${USER_ID}:0 ${APP_ROOT}/* && chmod -R a+rwx ${APP_ROOT}/* && fix-permissions ${APP_ROOT} -P

# Drop the root user
USER ${USER_ID}

# Start here ...
CMD ["start-rails"]
